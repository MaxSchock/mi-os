# Startup reminder: shows up to three pending items from en-curso.md
# in the working folder, only if the user asked for reminders.
# Windows PowerShell 5.1 compatible. No other interpreter needed.
# Never blocks the session: any error ends silently with exit 0.

$ErrorActionPreference = 'Stop'

function ConvertTo-JsonString([string]$s) {
    # Escape everything outside printable ASCII so console encoding never matters.
    $sb = New-Object System.Text.StringBuilder
    [void]$sb.Append('"')
    foreach ($ch in $s.ToCharArray()) {
        $code = [int]$ch
        if ($ch -eq '"') { [void]$sb.Append('\"') }
        elseif ($ch -eq '\') { [void]$sb.Append('\\') }
        elseif ($code -lt 32 -or $code -gt 126) { [void]$sb.Append(('\u{0:x4}' -f $code)) }
        else { [void]$sb.Append($ch) }
    }
    [void]$sb.Append('"')
    return $sb.ToString()
}

try {
    $folder = $env:CLAUDE_PROJECT_DIR
    if ([string]::IsNullOrWhiteSpace($folder)) {
        try {
            $raw = [Console]::In.ReadToEnd()
            if ($raw) { $folder = ($raw | ConvertFrom-Json).cwd }
        } catch { }
    }
    if ([string]::IsNullOrWhiteSpace($folder)) { $folder = (Get-Location).Path }

    $file = Join-Path $folder 'en-curso.md'
    if (-not (Test-Path -LiteralPath $file -PathType Leaf)) { exit 0 }

    # Notepad may save as UTF-8 (with or without BOM) or as ANSI (Windows-1252).
    $bytes = [System.IO.File]::ReadAllBytes($file)
    $text = $null
    if ($bytes.Length -ge 2 -and $bytes[0] -eq 0xFF -and $bytes[1] -eq 0xFE) {
        # Notepad "Unicode": UTF-16 little endian.
        $text = [System.Text.Encoding]::Unicode.GetString($bytes, 2, $bytes.Length - 2)
    } elseif ($bytes.Length -ge 2 -and $bytes[0] -eq 0xFE -and $bytes[1] -eq 0xFF) {
        $text = [System.Text.Encoding]::BigEndianUnicode.GetString($bytes, 2, $bytes.Length - 2)
    } elseif ($bytes.Length -ge 3 -and $bytes[0] -eq 0xEF -and $bytes[1] -eq 0xBB -and $bytes[2] -eq 0xBF) {
        $text = [System.Text.Encoding]::UTF8.GetString($bytes, 3, $bytes.Length - 3)
    } else {
        try { $text = (New-Object System.Text.UTF8Encoding($false, $true)).GetString($bytes) }
        catch { $text = [System.Text.Encoding]::GetEncoding(1252).GetString($bytes) }
    }
    $lines = $text -split "`r?`n"

    # The user decides in the interview; the file stores it as "Recordar al abrir: si|no".
    $wants = $false
    foreach ($l in $lines) {
        if ($l -match '^\s*[*_]*\s*Recordar al abrir\s*[*_]*\s*:\s*[*_]*\s*(\p{L}+)') {
            # First word only, so "si." or "si, gracias" also count; bold marks are ignored.
            $v = $Matches[1].ToLowerInvariant()
            $wants = ($v -eq 's' + [char]0x00ED) -or ($v -eq 'si')
            break
        }
    }
    if (-not $wants) { exit 0 }

    # Items are the "- " lines under the "Pendiente" heading (any level, with or without ":").
    $items = New-Object System.Collections.Generic.List[string]
    $inside = $false
    foreach ($l in $lines) {
        if ($l -match '^\s*#{1,6}\s+(.+?)\s*$') {
            $h = ($Matches[1] -replace '^[*_\s]+', '') -replace '[*_:\s]+$', ''
            $inside = ($h.ToLowerInvariant() -match '^pendientes?$')
            continue
        }
        if ($inside -and $l -match '^\s*[-*]\s+(.*?)\s*$') {
            $item = $Matches[1]
            # Items ticked as [x] are done and do not show; an empty box is not an item.
            if ($item -match '^\[[xX]\]') { continue }
            $item = ($item -replace '^\[\s?\]\s*', '').Trim()
            if ($item.Length -eq 0) { continue }
            $items.Add($item)
        }
    }
    if ($items.Count -eq 0) { exit 0 }

    $n = $items.Count
    $shown = $items | Select-Object -First 3
    # Neutral wording: neither tu nor usted.
    if ($n -eq 1) { $head = 'Queda 1 cosa pedida y sin hacer:' }
    else { $head = "Quedan $n cosas pedidas y sin hacer:" }
    $body = ($shown | ForEach-Object { '  - ' + $_ }) -join "`n"
    if ($n -gt 3) { $body += "`n  (y " + ($n - 3) + ' m' + [char]0x00E1 + 's en en-curso.md)' }
    $msg = $head + "`n" + $body

    $ctx = 'Pendientes que el usuario pidi' + [char]0x00F3 + ' recordar al abrir (fichero en-curso.md de su carpeta de trabajo). ' +
           'Ya los ha visto en pantalla; en tu primera respuesta, si encaja, ofrece retomar uno, sin repetir la lista entera.' +
           "`n" + $msg

    $json = '{"systemMessage":' + (ConvertTo-JsonString $msg) +
            ',"hookSpecificOutput":{"hookEventName":"SessionStart","additionalContext":' + (ConvertTo-JsonString $ctx) + '}}'
    [Console]::Out.Write($json)
    exit 0
} catch {
    exit 0
}

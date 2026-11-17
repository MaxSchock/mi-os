# Mi OS (nombre provisional)

Un añadido gratuito para la app de escritorio de Claude en Windows. Está en pruebas: puede cambiar y puede fallar.

## Qué hace hoy

- **Te entrevista la primera vez.** Unas pocas preguntas sobre ti, tu trabajo y cómo quieres que te hable. Con tus respuestas escribe tu ficha en `C:\Users\<tu usuario>\.claude\CLAUDE.md`, que Claude lee en cada conversación. Antes de guardarla te la enseña, y si ya tenías una, guarda una copia.
- **Apunta lo pendiente al despedirte.** Si se lo pides, cuando digas en el chat que terminas por hoy, apunta lo que quedó a medias.
- **Te lo recuerda al abrir.** Al empezar una conversación nueva en esa carpeta, te dice lo que dejaste apuntado.

La entrevista va en el idioma en que escribas, y el aviso al abrir sale en castellano, inglés, alemán o francés. En `en-curso.md`, las líneas `Recordar al abrir: sí`, `## Pendiente` e `Idioma: de` (o el idioma que tengas) se dejan tal cual: el aviso las busca así. Si traduces `Recordar al abrir` o `## Pendiente`, el aviso deja de salir; sin la línea `Idioma`, sale en castellano.

## Qué no hace todavía

- No te avisa antes de que Claude envíe un correo o borre algo. Eso lo decide la app, con sus propias preguntas.
- No protege tus contraseñas ni tus claves. No las pegues en el chat.

## Qué necesitas

Windows, la app de escritorio de Claude, una cuenta de pago (Pro o superior) y Git para Windows. Si no tienes Git, mira «Sin Git» más abajo.

## Instalarlo

En la app, abre la pestaña Code, elige como carpeta de trabajo una carpeta tuya (por ejemplo, crea `C:\Mi-OS`) y escribe estas dos órdenes, una cada vez:

```
/plugin marketplace add MaxSchock/mi-os
/plugin install mi-os@mi-os
```

Cierra la conversación y abre una nueva. Para empezar, escribe «Empecemos».

### Sin Git

En la página de este repositorio, pulsa el botón verde «Code» y luego «Download ZIP». Descomprímelo, por ejemplo en `C:\mi-os-main`, y cambia la primera orden por esta:

```
/plugin marketplace add C:\mi-os-main
```

La segunda orden es la misma.

## Quitarlo

```
/plugin uninstall mi-os@mi-os
/plugin marketplace remove mi-os
```

Tu ficha `CLAUDE.md` se queda en tu ordenador; si no la quieres, bórrala de `C:\Users\<tu usuario>\.claude\`. Lo mismo con `en-curso.md`, en tu carpeta de trabajo.

## English

A free add-on for the Claude desktop app on Windows. It is a test version: it may change and it may fail.

**What it does today**

- **Interviews you the first time.** A few short questions about you, your work and how you want Claude to talk to you. It writes your answers into `C:\Users\<your user>\.claude\CLAUDE.md`, which Claude reads in every conversation. It shows you the file before saving it, and if you already had one, it saves a copy first.
- **Notes what is still open when you sign off.** If you ask for it, when you say in the chat that you are done for the day, it writes down what was left unfinished in `en-curso.md` in your working folder.
- **Reminds you when you open.** When you start a new conversation in that folder, it shows what you noted down, in your language (English, German, French or Spanish).

The interview follows the language you write in. In `en-curso.md`, leave the lines `Recordar al abrir: sí`, `## Pendiente` and `Idioma: en` (or your language) exactly as they are: the reminder looks for them. If you translate `Recordar al abrir` or `## Pendiente`, the reminder stops showing; without the `Idioma` line, it shows in Spanish.

**What it does not do yet**

- It does not warn you before Claude sends an email or deletes something. The app decides that, with its own questions.
- It does not protect your passwords or keys. Do not paste them into the chat.

**What you need:** Windows, the Claude desktop app, a paid plan (Pro or higher) and Git for Windows. Without Git, see below.

**Install.** In the app, open the Code tab, pick a folder of your own as the working folder (for example, create `C:\Mi-OS`) and type these two commands, one at a time:

```
/plugin marketplace add MaxSchock/mi-os
/plugin install mi-os@mi-os
```

Close the conversation and open a new one. To begin, type "Let's start".

**Without Git.** On this page, click the green "Code" button and then "Download ZIP". Unzip it, for example to `C:\mi-os-main`, and use this as the first command instead:

```
/plugin marketplace add C:\mi-os-main
```

The second command stays the same.

**Remove it.**

```
/plugin uninstall mi-os@mi-os
/plugin marketplace remove mi-os
```

Your `CLAUDE.md` stays on your computer. If you do not want it, delete it from `C:\Users\<your user>\.claude\`. The same goes for `en-curso.md` in your working folder.

## Deutsch

Ein kostenloses Plugin für die Claude-Desktop-App unter Windows. Es ist eine Testversion: Sie kann sich ändern und Fehler haben.

**Was es heute kann**

- **Führt beim ersten Mal ein kurzes Gespräch mit dir.** Ein paar Fragen zu dir, deiner Arbeit und wie Claude mit dir sprechen soll. Aus den Antworten schreibt es die Datei `C:\Users\<dein Benutzer>\.claude\CLAUDE.md`, die Claude in jedem Gespräch liest. Vor dem Speichern zeigt es dir die Datei, und wenn du schon eine hattest, legt es vorher eine Kopie an.
- **Notiert beim Abschied, was offen ist.** Wenn du das möchtest, schreibt es in `en-curso.md` in deinem Arbeitsordner auf, was liegen geblieben ist, sobald du im Chat sagst, dass du für heute Schluss machst.
- **Erinnert dich beim Öffnen.** Wenn du in diesem Ordner ein neues Gespräch beginnst, zeigt es dir, was notiert ist, in deiner Sprache (Deutsch, Englisch, Französisch oder Spanisch).

Das Gespräch läuft in der Sprache, in der du schreibst. In `en-curso.md` bleiben die Zeilen `Recordar al abrir: sí`, `## Pendiente` und `Idioma: de` genau so stehen: Die Erinnerung sucht danach. Wenn du `Recordar al abrir` oder `## Pendiente` übersetzt, erscheint sie nicht mehr; ohne die Zeile `Idioma` erscheint sie auf Spanisch.

**Was es noch nicht kann**

- Es warnt dich nicht, bevor Claude eine E-Mail verschickt oder etwas löscht. Das entscheidet die App mit ihren eigenen Rückfragen.
- Es schützt keine Passwörter oder Schlüssel. Füge sie nicht in den Chat ein.

**Was du brauchst:** Windows, die Claude-Desktop-App, ein bezahltes Abo (Pro oder höher) und Git für Windows. Ohne Git: siehe unten.

**Installieren.** Öffne in der App den Tab „Code“, wähle einen eigenen Ordner als Arbeitsordner (lege zum Beispiel `C:\Mi-OS` an) und gib diese zwei Befehle ein, einen nach dem anderen:

```
/plugin marketplace add MaxSchock/mi-os
/plugin install mi-os@mi-os
```

Schließ das Gespräch und öffne ein neues. Schreib dann „Lass uns anfangen“.

**Ohne Git.** Klicke auf dieser Seite auf den grünen Button „Code“ und dann auf „Download ZIP“. Entpacke die Datei, zum Beispiel nach `C:\mi-os-main`, und nimm als ersten Befehl diesen:

```
/plugin marketplace add C:\mi-os-main
```

Der zweite Befehl bleibt gleich.

**Entfernen.**

```
/plugin uninstall mi-os@mi-os
/plugin marketplace remove mi-os
```

Deine `CLAUDE.md` bleibt auf deinem Rechner. Wenn du sie nicht willst, lösche sie in `C:\Users\<dein Benutzer>\.claude\`. Das Gleiche gilt für `en-curso.md` in deinem Arbeitsordner.

## Licencia · License · Lizenz

MIT.

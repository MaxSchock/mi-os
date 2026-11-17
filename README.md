# Mi OS (nombre provisional)

Un añadido gratuito para la app de escritorio de Claude en Windows. Está en pruebas: puede cambiar y puede fallar.

## Qué hace hoy

- **Te entrevista la primera vez.** Unas pocas preguntas sobre ti, tu trabajo y cómo quieres que te hable. Con tus respuestas escribe tu ficha en `C:\Users\<tu usuario>\.claude\CLAUDE.md`, que Claude lee en cada conversación. Antes de guardarla te la enseña, y si ya tenías una, guarda una copia.
- **Apunta lo pendiente al despedirte.** Si se lo pides, cuando digas en el chat que terminas por hoy, apunta lo que quedó a medias.
- **Te lo recuerda al abrir.** Al empezar una conversación nueva, te dice lo que dejaste apuntado.

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

Tu ficha `CLAUDE.md` se queda en tu ordenador; si no la quieres, bórrala de `C:\Users\<tu usuario>\.claude\`.

## Licencia

MIT.

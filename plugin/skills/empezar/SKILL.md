---
name: empezar
description: La persona acaba de instalar el OS y aún no tiene ficha, o quiere que Claude la conozca mejor o cambiar algo de cómo la trata. Entrevista corta, ficha de instrucciones personales escrita con ella y enseñada antes de guardarla, cuentas conectadas comprobadas y una primera tarea real con sus datos.
license: MIT
metadata:
  version: "0.1.0"
---

# Empezar

Quien te habla es el dueño o gerente de una empresa pequeña, o un autónomo. Usa el chat de Claude a diario pero nunca ha abierto una terminal ni sabe qué es git. En unos veinte minutos tiene que salir con tres cosas: un fichero con quién es y cómo quiere trabajar, sus cuentas comprobadas y una tarea suya resuelta.

Habla siempre en el idioma en que te escriba (por defecto, castellano). Tutea, salvo que su ficha previa o la persona pidan usted (si lo pide a mitad de entrevista, cambia desde ese mensaje); en ese caso adapta también las frases de ejemplo de esta skill. Frases cortas, sin palabras técnicas; si una hace falta, se explica en la misma frase. No le cuentes cómo trabajas por dentro (qué preguntas te saltas, qué fichero estás leyendo): solo lo que tiene que saber o decidir.

## 1. Antes de preguntar

1. Mira si ya existe `~/.claude/CLAUDE.md` (en Windows, `%USERPROFILE%\.claude\CLAUDE.md`). Si existe, léelo entero: lo que ya diga no se vuelve a preguntar (si lo dice a medias, pregunta solo lo que falta; si dice cómo quiere que le hables, confírmalo en una línea en la pregunta 6, por si ha cambiado), y al final propondrás qué añadir, no lo sustituirás. Si ya pasa de 60 líneas, díselo al empezar: al acabar la entrevista, antes de añadir nada, le propondrás qué quitar.
2. Dile en dos líneas qué vais a hacer: «Te hago unas diez preguntas cortas para saber cómo trabajas. Con eso escribo una ficha que leo cada vez que abres Claude. Antes de guardarla te la enseño. Te trato de tú; si prefieres de usted, dímelo.» Si su ficha previa ya dice cómo tratarla, usa ese trato desde este primer mensaje y cambia la última frase por la suya («Le trato de usted, como pone en su ficha.»).

## 2. La entrevista

Una pregunta por mensaje. Espera la respuesta antes de la siguiente. Si una respuesta ya contesta otra pregunta, sáltala. Si la persona contesta varias cosas a la vez, quédate con todo y salta las preguntas que ya ha contestado. Si se va por las ramas, recoge lo que conteste a la pregunta y vuelve a ella con una frase, sin cortarla. Si la persona contesta poco, no insistas: pasa a la siguiente. Si no queda claro si una respuesta es un sí o un no, pregúntalo una vez; si sigue sin estar claro, tómalo como no.

1. ¿A qué te dedicas? ¿Qué hace tu empresa o tu negocio y para quién?
2. ¿Qué haces tú en el día a día? (lo que te toca a ti, no a tu equipo)
3. ¿Con qué tipo de gente tratas más? Por ejemplo clientes particulares, empresas, proveedores, tu asesoría, tu equipo.
4. ¿Qué herramientas usas cada día? Correo, calendario, documentos, hojas de cálculo, programa de facturas, WhatsApp...
5. ¿En qué se te va el tiempo cada semana que te gustaría quitarte de encima?
6. ¿Cómo quieres que te hable? De tú o de usted, corto o con detalle, en qué idioma.
7. ¿Qué te saca de quicio cuando alguien te escribe o te prepara algo?
8. ¿Hay algo que no quieres que haga nunca sin preguntarte antes? (por ejemplo, enviar un correo, borrar un archivo)
9. ¿Quieres que, al terminar, apunte lo que me pediste y quedó sin hacer, y te lo recuerde la próxima vez que abras?
10. Cuando me corrijas algo, ¿quieres que te pregunte si lo guardo como norma para la próxima vez?

Reglas de la entrevista:
- **Roles, no nombres.** No preguntes por nombres de clientes, empleados ni proveedores. Si la persona los da, en la ficha se escribe el rol («mi asesoría», «el encargado de obra»), nunca el nombre. En tus mensajes, igual: a quien escribe un correo lo nombras por su rol («un cliente», «una familia», «la asesoría»), sin nombre y sin género si el correo no lo deja claro.
- **Nada sensible.** No preguntes por salud, religión, ideas políticas, afiliación sindical, vida sexual ni datos de ese tipo. Si la persona cuenta algo así, de ella o de otra persona, aunque sea de pasada, no lo escribas en ningún fichero ni lo repitas en tus mensajes: «cuadrar horarios cuando una profesora se pone mala» se escribe «cuadrar horarios cuando falta alguien».
- **Solo lo que dice.** La ficha sale de sus respuestas, no de lo que supongas de su perfil: si dice «fontanería», escribe «me dedico a la fontanería», no «soy fontanero». No le pongas un oficio, un cargo ni un género que no haya usado. Lo mismo en lo que le dices: no le atribuyas nada que no haya contado («no usas calendario», si no lo ha dicho).
- **Ni datos de acceso.** Si alguien pega una contraseña, un número de cuenta o un IBAN, dile que no hace falta y que no lo pasas a la ficha ni a ningún fichero, pero que, como todo lo que escribe en el chat, ya lo ha recibido Claude y queda en el historial de esta conversación, guardado en su ordenador; si es una contraseña de verdad, que la cambie. No lo repitas en tus mensajes.

## 3. La ficha

Escribe el borrador con esta forma. Cada línea sale de una respuesta concreta; si una respuesta no dio nada útil, esa sección no aparece. No añadas normas, consejos ni nada que la persona no haya dicho. Tope: 60 líneas en total, contando las líneas en blanco y las que ya tuviera su fichero. No copies en la ficha datos de los clientes de la persona.

```markdown
# Quién soy
- (de las respuestas 1 y 2)

# Con quién trabajo
- (de la 3, por roles)

# Mis herramientas
- (de la 4)

# Lo que quiero quitarme de encima
- (de la 5)

# Cómo quiero que me hables
- (de la 6)

# Lo que no soporto
- (de la 7)

# Lo que nunca haces sin preguntarme
- (de la 8)

# Cómo trabajamos
- (de la 9: si dijo que sí, «Cuando me despida en el chat, apunta en en-curso.md de mi carpeta de trabajo lo que quedó sin hacer, y recuérdamelo al abrir.»; si dijo que no, «No quiero que me apuntes lo pendiente.»)
- (de la 10: si dijo que sí, «Cuando te corrija algo que valga para más veces, pregúntame si lo guardo como norma en este fichero.»; si dijo que no, «No me propongas guardar normas; si quiero guardar una, te lo pediré.»)

# Mis normas
(este apartado se guarda vacío, solo con el título; aquí irán las correcciones que la persona decida guardar)
```

Escríbela en primera persona, como si la hubiera escrito la persona, y con sus palabras cuando se pueda. Lo que es una orden para Claude se escribe como se la daría ella («háblame de tú», «recuérdame»).

**Enséñala entera antes de guardarla**, tal cual quedará, y pregunta: «¿La guardo así o cambias algo?». No guardes nada hasta que diga que sí.

Al guardar:
- Si no había fichero, créalo en `~/.claude/CLAUDE.md`.
- Si ya había uno, **haz antes una copia** al lado (una por conversación, antes del primer cambio; para los cambios siguientes de la misma conversación no hace falta otra), con la fecha y la hora en el nombre (`CLAUDE.copia-AAAAMMDD-HHMMSS.md`), y comprueba que la copia existe (sin contárselo: dile solo que has guardado una copia al lado). Luego no lo pises: enseña solo los cambios, cada línea nueva con «+» delante y bajo qué apartado de su fichero va (el que más se parezca; si no hay ninguno, uno nuevo con los nombres de arriba). Si una línea suya choca con lo que acaba de decir, o lo dice peor de lo que acaba de contar, propón sustituirla: la vieja con «-» y la nueva con «+». Lo del trato (tú o usted) va en un solo sitio. Aplica los cambios que acepte, todos o solo algunos. Para enseñar cambios, pon cada línea tal cual quedará o tal cual estaba, con «+» o «-» y un espacio delante, también si la línea ya empieza por guion («+ - Llamar a la asesoría»).
- Si el fichero previo pasa de 60 líneas, propón primero qué quitar o juntar, escribiendo cada línea entera con «-» delante (nunca un resumen como «las diez líneas de consejos»), y no añadas nada hasta que acepte acortarlo. Si no quiere, añade solo lo que quepa y díselo. Si entre lo que se quita hay algo que la persona tiene que hacer (por ejemplo, «preguntar a la asesoría por...»), no lo pierdas: si quiere recordatorios, pásalo a la lista «Pendiente» de `en-curso.md`; si no, díselo para que lo apunte donde quiera.
- Dile dónde está con palabras, sin rutas técnicas («en la carpeta .claude de tu usuario de Windows, se llama CLAUDE.md») y que puede abrirlo y cambiarlo cuando quiera con el Bloc de notas.

Si en la respuesta 9 dijo que sí, mira si ya hay un `en-curso.md` en la carpeta de trabajo (la que tiene abierta en la app). Si ya existe, no lo pises: deja lo que tenga y, si su línea `Recordar al abrir` no dice `sí`, díselo («tu en-curso.md decía que no; lo cambio a sí»), haz copia al lado (`en-curso.copia-AAAAMMDD-HHMMSS.md`) y cambia solo esa línea. Si dijo que no y ya hay un `en-curso.md` que dice `sí`, haz lo contrario: díselo («tu en-curso.md decía que sí; lo cambio a no»), copia y cambia solo esa línea a `no`, sin borrar lo demás. Si dijo que sí y no existe, créalo con esto:

```markdown
# En curso

Recordar al abrir: sí

## Pendiente

## En marcha
```

## 4. Cuentas conectadas

Mira qué herramientas de cuentas tienes disponibles en esta sesión (correo, calendario, documentos: Gmail, Google Calendar, Google Drive, Outlook u otras que veas). Compáralo con lo que contó en la respuesta 4.

- Dile en una frase qué tiene ya conectado.
- Si le falta alguna para lo que contó, nombra solo las que falten y dile cómo conectarla: en claude.ai, en Ajustes, en el apartado de conectores, y después cerrar y volver a abrir la app. Si no estás seguro del nombre exacto del menú en su pantalla, dilo así y pídele que te cuente qué ve. No le digas que algo no se puede conectar sin que lo haya mirado: pídele que busque su correo (por ejemplo, Outlook) en esa lista y que te diga si aparece.
- Herramientas que no se conectan así (WhatsApp, un programa de facturas instalado): dile en una frase que de momento no las ves, sin proponer apaños y sin añadir detalles que no haya dicho.
- Si no tiene ni correo ni calendario conectados, ayúdale a conectar al menos uno. Si no se puede ahora (lo ha buscado y no aparece en la lista, o prefiere dejarlo para otro día), haz la primera tarea con lo que pegue: pídele que copie en el chat un correo que tenga sin contestar, quitando antes nombres, importes y datos de acceso, y prepárale la respuesta.

## 5. Primera tarea real

Propón esta: «¿Qué tengo esta semana y qué correos esperan respuesta mía?»

1. Mira su calendario de los próximos siete días y su correo reciente (si no usa calendario, solo el correo). Cuenta qué tiene, con el detalle que pidió en la pregunta 6 (por defecto, pocas líneas), y qué correos parecen esperar algo de la persona, con el motivo en una frase cada uno.
2. Ofrece preparar el borrador de respuesta a uno de esos correos. Antes de escribirlo, pregúntale lo que la respuesta necesita y no sabes (una fecha, un precio, si acepta o no). El borrador dice solo lo que pone el correo y lo que ella te ha contestado: ni fechas, ni precios, ni plazos, ni condiciones, ni peticiones al otro que no haya dicho. Si dice que algo aún no lo sabe, el borrador no lo promete. Tampoco completes tú un dato para cumplir una norma suya: si la norma pide el año, el IVA o un número que no ha dicho («950 euros», ¿con IVA o sin?), pregúntaselo. Si el correo pegado no trae asunto, propón uno sin «Re:» y dile que es una propuesta. Enséñale el borrador entero; si cambia algo, enséñalo entero otra vez.
3. El borrador se queda en el chat para que lo copie y lo mande desde su correo. En esta primera tarea no envías nada, ni a otra persona ni a su propia dirección, aunque te lo pida: díselo en una frase.

## 6. Correcciones que se quedan

Esto vale durante la entrevista y durante el resto de la sesión, si en la respuesta 10 dijo que sí. Si dijo que no, no ofrezcas guardar normas: aplica la corrección durante esta conversación y no la escribas. La primera vez que pase, díselo en una frase: «Lo aplico hoy; si quieres que lo recuerde la próxima vez, pídemelo.» Solo si la persona te pide ella misma que guardes algo, hazlo como se explica aquí.

Cuando la persona te corrija, decide tú, leyendo la conversación, si es algo que valdrá para más veces («no me trates de usted», «los presupuestos siempre con IVA aparte») o algo de este momento («este correo, más corto»). No te guíes por palabras sueltas: lo que cuenta es si la corrección describe una forma de trabajar.

Si vale para más veces, pregunta: «¿Lo guardo como norma tuya?». Si dice que sí, enséñale la línea exacta y añádela en «Mis normas» (con copia como en el apartado 3, si toca); no hace falta otro sí. Si la corrección contradice una línea que ya está en la ficha, no añadas otra: sustituye esa línea en su apartado (la vieja con «-», la nueva con «+»). Si la persona te pide ella misma cambiar algo que ya está escrito, no le preguntes si lo guarda: enséñale la línea vieja con «-» y la nueva con «+» y cámbiala cuando diga que sí. La copia solo hace falta si el fichero ya existía antes de esta conversación y aún no la has hecho. Si dice que no, no insistas ni lo vuelvas a proponer para lo mismo.

## 7. El final

Cierra con un resumen de tres líneas: qué sabe ya Claude de la persona (en el resumen no se menciona el trato: ni «de tú», ni «de usted», ni «corto»; repásalo antes de enviarlo), qué tiene conectado y qué se hizo en la primera tarea. Si quiso recordatorios, dile que, cuando termine por hoy, se despida en el chat con sus palabras y apuntarás lo pendiente. Cerrar la ventana sin despedirse no apunta nada.

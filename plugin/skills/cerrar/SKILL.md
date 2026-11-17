---
name: cerrar
description: La persona se despide en el chat, termina por hoy o deja el trabajo a medias. Apunta en en-curso.md de su carpeta lo que pidió y no se hizo, y lo que queda a medias, si pidió que se lo recordaran al abrir.
license: MIT
metadata:
  version: "0.1.0"
---

# Cerrar

## 1. ¿Quiere que se apunte?

Mira primero su ficha (`~/.claude/CLAUDE.md`), apartado «Cómo trabajamos» (o el que lo diga en su idioma, si la ficha está en otro); después, el fichero `en-curso.md` de la carpeta de trabajo (la que tiene abierta en la app). Si no dicen lo mismo, manda la ficha: cambia en `en-curso.md` la línea `Recordar al abrir` para que diga lo que dice la ficha (y nada más de lo que ya había, salvo la línea `Idioma`, más abajo), con copia previa (`en-curso.copia-AAAAMMDD-HHMMSS.md`, al lado), y díselo en una línea. Si dicen lo mismo, no le cuentes nada de eso: no le expliques qué ficheros miras ni por qué apuntas o no apuntas.

- Si su ficha pide que se le recuerde lo pendiente (o la ficha no dice nada y `en-curso.md` dice `Recordar al abrir: sí`), sigue al punto 2.
- Si su ficha dice que no quiere que se le apunte lo pendiente (por ejemplo, «No quiero que me apuntes lo pendiente.»), no escribas nada ni vuelvas a preguntarlo: dile en dos líneas qué quedó hecho y qué no, y ya está.
- Si no lo pidió ni dijo que no, no escribas nada todavía. Dile en dos líneas qué quedó hecho y qué quedó sin hacer, y pregúntale si quiere que a partir de ahora se lo apunte. Es la única vez que se le pregunta:
  - Si dice que sí, crea `en-curso.md` como en el punto 2 (si ya existe, no lo pises) y añade a su ficha, en «Cómo trabajamos», la línea «Cuando me despida en el chat, apunta en en-curso.md de mi carpeta de trabajo lo que quedó sin hacer, y recuérdamelo al abrir.»
  - Si dice que no, añade a su ficha, en «Cómo trabajamos», la línea «No quiero que me apuntes lo pendiente.», para no volver a preguntarlo.
  - Las dos frases van en el idioma de su ficha. En los dos casos, enséñale la línea con «+» delante y haz antes copia de la ficha (`CLAUDE.copia-AAAAMMDD-HHMMSS.md`, al lado).
- Si en algún momento dice que ya no quiere recordatorios, cambia en `en-curso.md` la línea a `Recordar al abrir: no` (no borres el fichero) y sustituye en su ficha la línea del recordatorio por «No quiero que me apuntes lo pendiente.», enseñándole la vieja con «-» y la nueva con «+», con copia previa.

## 2. Qué se apunta

Repasa la conversación de hoy y, si existe, el `en-curso.md` que ya había.

- **Pendiente:** lo que la persona tiene que retomar: lo que pidió y no se hizo, y lo que quedó a medias, con el paso siguiente. Una línea por cosa, con lo justo para retomarla sin leer nada más. Por roles, no por nombres de terceros, y sin género si no se sabe («a quien lo pidió», no «a la novia»). Es lo que le sale al abrir.
- **En marcha:** lo que espera a otra persona (una respuesta, una cifra), con de quién depende, por rol. No sale al abrir.
- Cada línea sale de algo que se dijo o se hizo en esta conversación, o que ya estaba en el fichero. No añadas cómo, desde dónde, con quién ni cuándo se hará si la persona no lo dijo (ni «desde mi correo», ni una fecha, ni «mandarlo yo»). No apuntes ideas tuyas que la persona no pidió.
- Marca `[x]` lo que se terminó hoy (el arranque no lo enseña); no lo borres.
- Si el `en-curso.md` ya existía antes de esta conversación, consérvalo: antes de cambiar nada, haz copia al lado (`en-curso.copia-AAAAMMDD-HHMMSS.md`). Añade y marca líneas en las dos listas; no quites ninguna (salvo las marcadas `[x]`, con su sí, cuando no cabe: ver el tope), y lo que esté fuera de ellas no lo toques.
- Nada de contraseñas, números de cuenta, datos de salud (de la persona o de otros) ni datos de ese tipo.
- Escribe cada línea en primera persona, como la escribiría ella («llamar a la asesoría»), sin mezclar voces. Nada de «hoy» o «mañana»: pon el día («el jueves 19»), porque la leerá otro día. Si lo que queda es mandar un borrador, di dónde está («el borrador está en la conversación del 17-11»).

Tope: 30 líneas en todo el fichero, sin contar la línea `Idioma` ni las vacías. Si no cabe, propónle quitar solo las líneas marcadas `[x]` que hagan falta para que quepa, empezando por las primeras de la lista, enseñándoselas cada una con «- » delante de la línea tal cual («- - [x] Pedir los planos»), y quítalas solo con su sí (la copia ya está hecha). Si aun así no cabe, no recortes nada más: dile qué no ha cabido y que elija ella qué quitar.

**Forma fija de `en-curso.md`, en cualquier idioma.** El aviso al abrir solo lee tres líneas, tal cual: `Idioma:` (encima del primer título `##`), `Recordar al abrir:` y el título `## Pendiente`. Si se traduce `Recordar al abrir` o `## Pendiente`, el aviso deja de salir; si falta `Idioma:`, sale en castellano. `# En curso` y `## En marcha` el aviso no los lee, pero se escriben igual para que el fichero tenga siempre la misma forma. Las cinco van siempre en castellano y sin negritas, aunque la persona hable otro idioma, y el valor de `Recordar al abrir` siempre `sí` o `no`. En `Idioma:` va el código del idioma en que te escribe la persona: `es`, `en`, `de` o `fr`; si es otro, `es`. Lo que va debajo de cada lista (cada cosa pendiente o en marcha) se escribe en su idioma. Si te pregunta por esas líneas, explícale en su idioma que `Idioma`, `Recordar al abrir` y `Pendiente` son las que lee el aviso al abrir: si las traduce o las cambia, el aviso deja de salir o le sale en castellano; no hace falta contárselo si no pregunta. Si al cerrar falta la línea `Idioma:` o no coincide con el idioma en que te habla, ponla bien debajo de `# En curso` (con la copia de siempre, si el fichero ya existía).

Forma del fichero (con `es` cambiado por el código de su idioma):

```markdown
# En curso

Idioma: es

Recordar al abrir: sí

## Pendiente
- Presupuesto de la reforma: poner el precio del material y enviarlo

## En marcha
- Cierre del trimestre: espera la cifra de gastos de la asesoría
```

## 3. Al terminar

Enséñale lo que quedó apuntado, tal cual. Si hay algo en «Pendiente», dile cuántas líneas le saldrán la próxima vez que abra Claude en esta carpeta (todas si son tres o menos; si son más, las tres primeras y cuántas quedan); si «Pendiente» está vacío, dile que al abrir no saldrá nada. Si se va sin despedirse en el chat, no se apunta nada.

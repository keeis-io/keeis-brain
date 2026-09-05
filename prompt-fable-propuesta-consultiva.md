# Prompt para Fable — Propuesta de piloto, venta consultiva

Prompt de trabajo (no forma parte del repo keeis-brain). Pensado para correrse dentro de esta
misma sesión de Claude Code, en la raíz del repo, cambiando de modelo a Fable con `/model` —
necesita acceso a los archivos del repo que referencia.

```
Rol: actúa como el cerebro de la empresa Keeis (Kendall Fonseca e Isaac Alvarado, Costa Rica) —
no como un simple redactor de texto. Eso significa: conoces y sostienes la coherencia de toda la
hipótesis, el plan de validación, las decisiones ya tomadas y el estado real de cada entrevista
antes de escribir una sola palabra; señalas contradicciones con lo ya confirmado en vez de
ignorarlas; y tu criterio de negocio, no solo tu redacción, es lo que produce esta propuesta.
Dentro de ese rol, la tarea concreta de hoy es formalizar una propuesta de negocio real y
presentable, dirigida a una empresa con equipo de venta consultiva.

CONTEXTO — léelo todo antes de escribir una sola línea:
- discovery/01_hypotheses/output/2026-08-26-hypothesis-consultative-sales-teams.md (la hipótesis
  activa completa: segmento, dolor, evidencia por entrevistado, qué está confirmado y qué
  contradicho)
- discovery/01_hypotheses/references/2026-09-04-plan-de-validacion-campo-ventas-consultivas.md
  (el plan de campo que gobierna esto)
- meetings/02_notes/output/2026-09-04-notes-roberto-solano.md (el plan de piloto que Roberto
  Solano propuso directamente — es la lógica de fondo de todo este ejercicio)
- Todo lo que hay en discovery/02b_pilot/ (value-proposition, assumptions-map,
  assumptions-prioritized, jtbd-interview-summaries, pilot-deliverable-design,
  lean-canvas-consultative-sales, pilot-offer.md, y el borrador preliminar
  2026-09-05-experiments-brainstorm.md)

pilot-offer.md es la REFERENCIA BASE de esta propuesta — no partas de cero, refínala y
complétala. Ahora mismo dice literalmente "Not sendable yet" porque tiene tres decisiones
operativas sin cerrar (dónde y con qué restricción de acceso se guardan las grabaciones; cuánto
tiempo se conservan después de la entrega; cómo se obtiene el consentimiento del cliente final,
que es un tercero que nunca aceptó participar y es la única de las tres con exposición legal
real). Esos tres huecos no se pueden dejar vagos en la versión final — un gerente que no reciba
una respuesta concreta ahí, correctamente, va a decir que no.

QUÉ ES ESTO Y QUÉ NO ES:
- NO estamos redactando una propuesta de "nuestro producto" terminado. Estamos validando la
  hipótesis de que esto le aporta valor real a la empresa — el objetivo es descubrir
  honestamente qué les sirve y qué no, no vender algo ya decidido.
- Las entrevistas de descubrimiento y las reuniones que ya tuvimos (Mauricio Castro/Eurohogar,
  Carlos Salazar/Purdy, Pablo Ramirez/Disrupt, Saylen Morales/ENHMED, y la asesoría de Roberto
  Solano) sirven como GUÍA para entender cómo operan estos equipos de venta y qué les duele —
  pero ninguna de esas conversaciones sentencia de forma definitiva cómo se va a ejecutar este
  piloto. Son contexto, no especificación cerrada.
- Esto tiene que ser un prototipo real y demostrable, estilo "Mechanical Turk": la empresa tiene
  que poder ver, en concreto, qué vamos a hacer y qué les vamos a entregar — no una descripción
  abstracta de una idea. La propuesta misma (entregable 1) tiene que transmitir eso con
  concreción — de qué manera exactamente se ve, en la práctica, lo que van a recibir — sin que
  eso dependa de un archivo aparte. Ejecutado a mano (sin IA todavía) para validar el valor antes
  de construir nada.

QUÉ TIENE QUE LOGRAR LA PROPUESTA:
1. Ser presentable y formal frente a una empresa real — lista para enviar o presentar, no un
   borrador interno.
2. Generar skin in the game real: no basta con que digan "esto se ve útil" — el diseño de la
   propuesta y del piloto tiene que estar armado para producir evidencia de compromiso real
   (que sigan usándolo sin que se les insinúe, o que paguen algo aunque sea simbólico), no solo
   una opinión de cortesía después de algo gratis.
3. Ser genuinamente enriquecedora en ambas direcciones: para Keeis (aprender qué enfocar del
   producto a futuro, y cuánto cuesta realmente entregarlo) y para la empresa (recibir hallazgos
   accionables reales sobre sus propias conversaciones de venta, no un favor).
4. Seguir el conocimiento completo que ya existe sobre esta hipótesis — no contradecir sin razón
   lo que ya está confirmado o refutado por entrevistado (por ejemplo: a Carlos Salazar esto no
   le duele y pidió control de cumplimiento en su lugar; Pablo Ramirez valora el hallazgo pero
   objeta el mecanismo de grabación; Saylen Morales/ENHMED es el perfil que el análisis ya marcó
   como el mejor candidato para el primer piloto, por no tener CRM de campo y sí tener el dolor
   confirmado como debilidad).

ANTES DE ESCRIBIR: haz todas las preguntas que necesites para plantear esto de forma correcta e
indicada. En particular, no asumas en silencio las tres decisiones bloqueantes de arriba
(almacenamiento/acceso, retención, consentimiento del cliente final) — pregúntalas
explícitamente si no están resueltas, en vez de inventar una respuesta. Pregunta también, si no
es evidente: a qué empresa o perfil de empresa va dirigida esta versión de la propuesta (¿es
para Saylen Morales/ENHMED, para el contacto de Yasmin/agencia de autos que gestiona Roberto, o
un formato genérico para cualquiera de las tres vías del plan?). Pero si segun el analisis realizado
logras responder de manera conveniente estas preguntas entonces hazlas tu para completar todo. Al finalizar
decime cuales son las respuestas que elegistes.

ENTREGABLES, EN ESTE ORDEN:

1. PRINCIPAL — la propuesta formal, en español (registro externo pulido, no interno-terso, per
   _config/voice.md), lista para presentar a una empresa real: qué reciben, qué se les pide,
   qué NO hacemos (sin ranking entre vendedores, sin reporte de cumplimiento, nada sale de
   Kendall/Isaac, pueden detenerlo cuando quieran), y por qué es gratis (intercambio honesto,
   no favor). Este es el objetivo principal de todo el trabajo.

2. ARCHIVO DE HITOS — un archivo aparte con el roadmap de ejecución dividido en bloques de
   DOS SEMANAS, desde el momento en que se confirma la primera empresa hasta el punto de
   decisión de la Fase 5. Cada bloque debe indicar: qué se ejecuta en ese lapso, qué decisión o
   evidencia debe quedar cerrada al final del bloque, y qué pasa si no se cierra (recalendarizar
   vs. abandonar esa vía). Consistente con lo ya definido: Fase 5 requiere al menos 3 pilotos
   completados en al menos 2 perfiles de venta distintos antes de decidir. Ojo con un dato que NO
   está confirmado en ningún documento: pilot-offer.md dice que el ciclo completo de un piloto
   (grabación + análisis + readout) cabe en una semana, pero
   2026-09-04-assumptions-map.md (asunción #6) dice explícitamente que cuánto toma el análisis
   real todavía no se ha medido — es lo que el primer piloto mide. No asumas un número fijo de
   semanas por piloto: dimensiona el primer bloque de dos semanas alrededor de UN piloto con
   margen, y deja explícito que la duración de los siguientes se recalibra con lo que el primero
   mida, no con una estimación previa.

3. ARCHIVO DE EXPERIMENTOS — solo después de terminar los entregables 1 y 2. Ya existe un primer
   pase en discovery/02b_pilot/output/2026-09-05-experiments-brainstorm.md (hipótesis XYZ + tres
   experimentos de bajo costo), hecho ANTES de que existiera la propuesta formal — es un borrador
   preliminar, no el resultado final. Vuelve a correr la skill `brainstorm-experiments-new`
   (pm-product-discovery) usando la propuesta y el archivo de hitos ya terminados como insumo
   adicional — no repitas el análisis desde cero, revísalo: ¿cambia algo de los experimentos
   propuestos ahora que la propuesta final y el calendario ya existen? Actualiza ese mismo
   archivo (2026-09-05-experiments-brainstorm.md) con lo que cambie, en vez de crear uno nuevo, y
   deja una nota corta al final indicando qué se revisó y por qué.

4. SIGUIENTES PASOS ORDENADOS — lista secuencial de acciones concretas para ejecutar esto: a
   quién se le presenta primero y por qué, qué falta resolver antes de poder enviar la
   propuesta, y cómo se mide si el piloto realmente validó algo según el criterio ya definido
   (al menos 3 pilotos completados en al menos 2 perfiles de venta distintos, con pago
   simbólico o solicitud explícita de continuar — no solo "esto tiene valor").

   cuando terminas dejame toda la arquitectura icm y este segundo cerebro de nuestra empresa (que es este repo) perfectamente organizada para concentrarnos de aqui en adelante solo en este frente.
```

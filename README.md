# Jobs App

Aplicación móvil desarrollada con [Flutter](https://flutter.dev/).

<img src="https://github.com/user-attachments/assets/c38c4e0e-eb46-40eb-9114-b00f775e153c" alt="Jobs screen" width="250">
<img src="https://github.com/user-attachments/assets/c703da41-1932-4e4d-9024-df76f7456b62" alt="Details screen" width="250">
<img src="https://github.com/user-attachments/assets/fd3eca68-62ff-49e5-8d97-f025cf8c1f1d" alt="Job screen" width="250">

> Este repositorio es personal y resuelve la Fase 1 de la Ruta de Crecimiento Práctica del Chapter Mobile.

## Diseño visual

[Material 3](https://m3.material.io/) fue el sistema de diseño elegido e implementado por su sencillez y robustez.

## Diseño funcional

La aplicación consta de tres pantallas.

[📀 Demo](https://github.com/user-attachments/assets/ac2990f6-10ab-4364-8f96-6584476abe2d)

### Vacantes

Lista ordenadamente tarjetas que muestran vacantes. Cada tarjeta contiene un resumen que consta de título, equipo y países; además, solo un botón, para ver los detalles de la vacante. El ordenamiento de las vacantes se obtiene comparando la urgencia de cada vacante, para posicionar primeramente aquellas que sean urgentes. Esta urgencia se puede evidenciar en que el título de la vacante destaca más.

### Detalles

Amplía la información de una vacante al mostrar su descripción, permitiendo también eliminarla.

### Vacante (Form)

Crea o actualiza una vacante.

## Consideraciones técnicas

- 🍦 ¡Tanta _vanilla_ como sea posible!
- 😶‍🌫️ Almacenamiento temporal de datos (RAM).
- 🫡 Distribución de responsabilidades entre `Widget`s (`Screen`s vs. `View`s).

## Consideraciones no técnicas

- 🛞 No reinventar la rueda: construir sobre lo construido.
- 🧮 Menos es más: menos complejidad, más practicidad.
- 💜 Avanzar en buena compañía.

## Acerca de

Asistí a la FlutterConf Latam 2023.

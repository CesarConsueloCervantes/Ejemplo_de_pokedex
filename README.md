# Ejemplo de Pokédex

Aplicación desarrollada de manera individual como proyecto personal de práctica,
con el objetivo de aplicar conceptos de desarrollo móvil con Flutter y consumo
de APIs REST públicas.

## Desarrollo del proyecto
- Diseño y desarrollo completo de la aplicación
- Implementación de navegación y pantallas
- Consumo de la API pública PokeAPI
- Gestión de estado con Provider
- Creación de widgets reutilizables

## Fuente de datos

La aplicación consume datos desde la API pública PokeAPI (https://pokeapi.co/)
utilizada únicamente con fines educativos y de práctica.

## Características

- **Pantalla de Inicio**: Muestra grupos de tipos de Pokémon con iconos.
- **Pantalla de Resultados**: Lista de Pokémon filtrados por tipo seleccionado.
- **Pantalla de Detalles**: Información detallada de un Pokémon, incluyendo estadísticas base, tipos y movimientos.
- **Widgets Reutilizables**: Tarjetas para tipos, estadísticas, movimientos y resultados.
- **Soporte Multiplataforma**: Compatible con Android, iOS, Linux, macOS, Web y Windows.
- **Gestión de Estado**: Usa Provider para manejar datos de Pokémon y tipos.

## Tecnologías Utilizadas

- **Flutter**: Framework principal para el desarrollo de la UI.
- **Dart**: Lenguaje de programación.
- **HTTP**: Para solicitudes a la API de PokeAPI.
- **Provider**: Para gestión de estado.
- **CMake**: Para configuración de builds en plataformas nativas.

## Estructura del Proyecto

```
lib/
├── UI/
│   ├── main.dart              # Punto de entrada de la app
│   ├── models/                # Modelos de datos (Type, Pokemon, etc.)
│   ├── providers/             # Proveedores de datos (PokemonProvider, TypeProvider)
│   ├── routes/                # Definiciones de rutas
│   ├── screens/               # Pantallas principales (Home, Results, Details)
│   └── widgets/               # Widgets reutilizables (Cards, etc.)
android/                       # Configuración para Android
ios/                           # Configuración para iOS
linux/                         # Configuración para Linux
macos/                         # Configuración para macOS
web/                           # Configuración para Web
windows/                       # Configuración para Windows
```

## Requisitos Previos

- Flutter SDK instalado (versión 3.0 o superior).
- Dart SDK.
- Un editor como Visual Studio Code con extensiones de Flutter.
- Conexión a internet para acceder a la API de PokeAPI.

## Instalación y Ejecución

1. **Clona el repositorio**:
   ```
   git clone <url-del-repositorio>
   cd ejemplo_de_pokedex
   ```

2. **Instala dependencias**:
   ```
   flutter pub get
   ```

3. **Ejecuta la aplicación**:
   - Para desarrollo local:
     ```
     flutter run
     ```
   - Para una plataforma específica (ej. Android):
     ```
     flutter run -d android
     ```
   - Para web:
     ```
     flutter run -d chrome
     ```

## Uso

- Inicia la app en la pantalla de inicio.
- Selecciona un grupo de tipos para ver resultados.
- Toca en un resultado para ver detalles del Pokémon.
- Navega entre pantallas usando el AppBar y botones.

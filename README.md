# ShellCraft Academy

**Aprende. Hackea. Construye.** 
ShellCraft Academy es una plataforma web centralizada para el aprendizaje profundo en ciberseguridad, redes, sistemas, programación y despliegue de servicios web. Construida con una estética de *terminal/hacker*, provee enlaces y temarios estructurados listos para ser complementados con contenido de aprendizaje.

## 🚀 Tecnologías

*   **HTML5 & CSS3**
*   **Bootstrap 5** - Para el diseño responsivo sin necesidad de escribir media-queries extensivos.
*   **JavaScript (Vanilla)**
*   **Firebase** - Configurado a nivel modular para futuras integraciones de Bases de Datos o Autenticación (`assets/js/firebase-config.js`).

## 📁 Estructura del Proyecto

El repositorio cuenta con una estructura limpia, ideal para despliegues estáticos como GitHub Pages.

```
/
├── index.html                   # Dashboard y catálogo principal de estudios
├── README.md                    # Documentación del proyecto
├── generate_files.ps1           # Script generador de la jerarquía de páginas base
├── assets/
│   ├── css/
│   │   └── style.css            # Estilos personalizados (variables de paleta, tipografías)
│   ├── js/
│   │   └── firebase-config.js   # Esqueleto de conexión con Firebase
│   └── images/
│       ├── logo.svg             # Logo escalable vectorial sin fondo
│       └── hero-bg.png          # Imagen 3D generada para cabecera principal
└── pages/                       # Directorios de módulos de la academia
    ├── redes/
    ├── sistemas/
    ├── bases-de-datos/
    ├── programacion/
    ├── servicios/
    ├── implementacion-web/
    └── ciberseguridad/
```

## 🎨 Paleta de Colores

Se utilizan variables de CSS que ofrecen los siguientes tonos inmersivos:
*   Fondos (Oscuros): `#091413` y `#1B211A`
*   Acentos Verdes: `#285A48`, `#408A71`, `#B0E4CC`, `#628141`, `#8BAE66`
*   Resaltador Amarillo: `#EBD5AB`

>   **Tipografía**: `JetBrains Mono` / `Courier New` 

## 🛠️ Para Empezar (Próximos Pasos)

1.  **Configurar Firebase**: Edita `assets/js/firebase-config.js` introduciendo las Keys de tu proyecto oficial si vas a necesitar lógica de Backend.
2.  **Rellenar Contenido**: Puedes empezar a editar todos los archivos HTML generados en `pages/` para añadir las guías técnicas, textos, y contenido pedagógico de los módulos.
3.  **Desplegar**: Solo debes hacer push de estos archivos a tu repositorio para que GitHub Pages renderice todo el portal y los enrutamientos pre-configurados funcionen de forma automática.

// assets/js/layout.js

document.addEventListener("DOMContentLoaded", () => {
    // Capturamos el script actual para leer la ruta base que le pasaremos desde el HTML
    const scriptTag = document.getElementById('layout-script');
    const basePath = scriptTag ? scriptTag.getAttribute('data-basepath') : './';

    // 1. Definimos el Navbar
    const navbarHTML = `
    <nav class="navbar navbar-expand-lg navbar-dark pb-3 pt-3">
        <div class="container">
            <a class="navbar-brand" href="${basePath}index.html">
                <img src="${basePath}assets/images/logo.svg" alt="ShellCraft Logo" width="40" height="40">
                ShellCraft <span class="text-accent">>_</span>
            </a>
            <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarNav">
                <ul class="navbar-nav ms-auto gap-3">
                    <li class="nav-item">
                        <a class="nav-link" href="${basePath}index.html">Inicio</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="${basePath}index.html#curriculum">Curriculum</a>
                    </li>
                </ul>
            </div>
        </div>
    </nav>
    `;

    // 2. Definimos el Footer
    const footerHTML = `
    <footer class="py-4 text-center mt-auto">
        <div class="container">
            <p class="mb-0 text-accent">© 2026 ShellCraft Academy. Forjado en la terminal.</p>
        </div>
    </footer>
    `;

    // 3. Inyectamos el HTML en los contenedores
    const navPlaceholder = document.getElementById('navbar-placeholder');
    const footerPlaceholder = document.getElementById('footer-placeholder');

    if (navPlaceholder) navPlaceholder.innerHTML = navbarHTML;
    if (footerPlaceholder) footerPlaceholder.innerHTML = footerHTML;
});
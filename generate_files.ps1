$basePath = "c:\Users\mzamorad\OneDrive - Capgemini\Documentos\web"

function Get-Template {
    param (
        [string]$pageTitle,
        [string]$moduleName
    )
    $depthStr = "../../"
    
    return @"
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>ShellCraft Academy - $($pageTitle)</title>
    <!-- Fonts -->
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=JetBrains+Mono:wght@400;700;800&display=swap" rel="stylesheet">
    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
    <!-- Custom CSS -->
    <link rel="stylesheet" href="$($depthStr)assets/css/style.css">
</head>
<body class="d-flex flex-column min-vh-100">
    <!-- Navbar -->
    <nav class="navbar navbar-expand-lg navbar-dark pb-3 pt-3">
        <div class="container">
            <a class="navbar-brand" href="$($depthStr)index.html">
                <img src="$($depthStr)assets/images/logo.png" alt="ShellCraft Logo" width="40" height="40">
                ShellCraft <span class="text-accent">>_</span>
            </a>
            <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarNav">
                <ul class="navbar-nav ms-auto gap-3">
                    <li class="nav-item"><a class="nav-link" href="$($depthStr)index.html">Inicio</a></li>
                    <li class="nav-item"><a class="nav-link active" href="#">$($moduleName)</a></li>
                </ul>
            </div>
        </div>
    </nav>

    <!-- Main Header -->
    <header class="hero-section text-center py-5 mb-5" style="padding: 60px 0; background-image: none; background-color: var(--color-base-alt); border-bottom: 2px solid var(--color-primary-light);">
        <div class="container">
            <h1 class="hero-title display-5">$($pageTitle)</h1>
            <p class="hero-subtitle mb-0">Módulo de $($moduleName)</p>
        </div>
    </header>

    <!-- Content Area -->
    <main class="container mb-5 flex-grow-1">
        <div class="row">
            <div class="col-lg-8 mx-auto terminal-window">
                <div class="terminal-header">
                    <div class="terminal-dot dot-red"></div>
                    <div class="terminal-dot dot-yellow"></div>
                    <div class="terminal-dot dot-green"></div>
                </div>
                <div class="terminal-body text-start">
                    <p><span class="prompt">guest@shellcraft:~$</span> <span class="command">cat descripcion.txt</span></p>
                    <p class="text-accent mt-3">
                        Bienvenido a la sección de <strong>$($pageTitle)</strong>.<br><br>
                        Todo el contenido asociado a este nivel se detallará próximamente. Prepara tu entorno para iniciar tu entrenamiento especializado.
                    </p>
                    <p><span class="prompt">guest@shellcraft:~$</span> <span class="command" style="animation: blink 1s step-end infinite;">_</span></p>
                </div>
            </div>
        </div>
        <div class="text-center mt-5">
             <a href="$($depthStr)index.html" class="btn btn-terminal">cd .. (Volver)</a>
        </div>
    </main>

    <!-- Footer -->
    <footer class="py-4 text-center mt-auto">
        <div class="container">
            <p class="mb-0 text-accent">© 2026 ShellCraft Academy. Forjado en la terminal.</p>
        </div>
    </footer>

    <!-- Bootstrap Bundle JS -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
    <!-- Firebase Config -->
    <script type="module" src="$($depthStr)assets/js/firebase-config.js"></script>
</body>
</html>
"@
}

$structure = [ordered]@{
    "Redes" = @("Fundamentos", "Routing", "Troubleshooting");
    "Sistemas" = @("Fundamentos de Linux", "Fundamentos de Windows", "Personalizacion de Entornos Linux");
    "Bases de Datos" = @("Introduccion a las Bases de Datos", "SQL", "No SQL");
    "Programacion" = @("Python", "C_C++_C");
    "Servicios" = @("DNS", "SSH", "FTP", "DHCP", "CORREO", "HTTP_HTTPS");
    "Implementacion Web" = @("HTML", "CSS", "JavaScript", "Bootstrap", "PHP", "Conexion con Bases de Datos");
    "Ciberseguridad" = @("Introduccion a la ciberseguridad", "Introduccion al hacking etico", "Especializacion en Pentesting Web", "Especializacion en Pentesting en Active Directory", "Especializacion en Pentesting en Android_IOs")
}

New-Item -ItemType Directory -Force -Path "$basePath\pages" | Out-Null

foreach ($module in $structure.Keys) {
    # Replace spaces with hyphens and convert to lowercase for folder names
    $folderName = $module -replace " ", "-" -replace "ó", "o" -replace "í", "i" -replace "á", "a" -replace "é", "e" -replace "ú", "u"
    $folderName = $folderName.ToLower()
    $modulePath = "$basePath\pages\$folderName"
    
    New-Item -ItemType Directory -Force -Path $modulePath | Out-Null
    
    foreach ($pageContent in $structure[$module]) {
        # Format filename
        $fileName = $pageContent -replace " ", "-" -replace "ó", "o" -replace "í", "i" -replace "á", "a" -replace "é", "e" -replace "ú", "u" -replace "/", "_" -replace "\+", "p" -replace "\#", "sharp" -replace "\*", "star"
        $fileName = $fileName.ToLower() + ".html"
        $filePath = "$modulePath\$fileName"
        
        $htmlContent = Get-Template -pageTitle $pageContent -moduleName $module
        Out-File -FilePath $filePath -InputObject $htmlContent -Encoding UTF8
    }
}
Write-Host "Files generated."

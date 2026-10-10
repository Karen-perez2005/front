<?php
require_once 'includes/auth.php';

// Si ya está logueado, redirigir
if (isLoggedIn()) {
    header('Location: dashboard.php');
    exit;
}

$error = $_GET['error'] ?? '';
?>
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Iniciar Sesión</title>
    <link rel="stylesheet" href="assets/style.css">
</head>
<body class="center">
    <form action="login_process.php" method="POST" class="card">
        <h1>🔐 Iniciar Sesión</h1>
        
        <?php if ($error): ?>
            <p class="error"><?= htmlspecialchars($error) ?></p>
        <?php endif; ?>

        <input type="text" name="username" placeholder="Usuario" required autofocus>
        <input type="password" name="password" placeholder="Contraseña" required>
        <button type="submit">Entrar</button>
        
        <small>Demo: <b>admin</b> / <b>123456</b></small>
    </form>
</body>
</html>

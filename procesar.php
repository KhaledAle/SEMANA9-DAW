<?php
require_once __DIR__ . '/config.php';

$nombre = filter_input(INPUT_POST, 'nombre', FILTER_SANITIZE_STRING);
$correo = filter_input(INPUT_POST, 'correo', FILTER_SANITIZE_EMAIL);

if ($nombre === null || trim((string) $nombre) === '') {
    $nombre = 'No proporcionado';
}

if ($correo === false || !filter_var($correo, FILTER_VALIDATE_EMAIL)) {
    $correo = 'No válido';
}

$nombreSeguro = htmlspecialchars($nombre, ENT_QUOTES, 'UTF-8');
$correoSeguro = htmlspecialchars($correo, ENT_QUOTES, 'UTF-8');
?>
<!DOCTYPE html>
<html lang="es">
  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Resultado PHP</title>
  </head>
  <body>
    <h1>Datos recibidos</h1>
    <p><strong>Nombre:</strong> <?php echo $nombreSeguro; ?></p>
    <p><strong>Correo:</strong> <?php echo $correoSeguro; ?></p>
    <p>Los datos fueron validados con <code>filter_input()</code> y mostrados con <code>htmlspecialchars()</code> para mayor seguridad.</p>
    <a href="index.html">Volver al formulario</a>
  </body>
</html>

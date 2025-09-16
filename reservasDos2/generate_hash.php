<?php
$password = "1qazxsw2"; // CAMBIA ESTA CONTRASEÑA
$hash = password_hash($password, PASSWORD_DEFAULT);

echo "Contraseña: $password\n";
echo "Hash generado: $hash\n";

// Comando SQL para insertar el usuario:
echo "\nEjecuta este SQL en tu base de datos:\n";
echo "INSERT INTO usuarios (username, password_hash) VALUES ('admin', '$hash');";
?>
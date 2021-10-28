<?php
/*
CRUD con PostgreSQL y PHP
@author parzibyte [parzibyte.me/blog]
@date 2019-06-17

================================
Este archivo muestra un formulario llenado automáticamente
(a partir del ID pasado por la URL) para editar
================================
 */

if (!isset($_GET["id"])) {
    exit();
}

$id = $_GET["id"];
include_once "base_de_datos.php";
$sentencia = $base_de_datos->prepare("SELECT id, nombre FROM tab_elementos_proteccion WHERE id = ?;");
$sentencia->execute([$id]);
$elemento = $sentencia->fetchObject();
if (!$elemento) {
    #No existe
    echo "¡No existe algun elemento con ese ID!";
    exit();
}

#Si el elmento existe, se ejecuta esta parte del código
?>
<?php include_once "encabezado.php"?>
<div class="row">
	<div class="col-12">
		<h1>Editar</h1>
		<form action="guardarDatosEditados.php" method="POST">
			<input type="hidden" name="id" value="<?php echo $elemento->id; ?>">
			<div class="form-group">
				<label for="nombre">Nombre</label>
				<input value="<?php echo $elemento->nombre; ?>" required name="nombre" type="text" id="nombre" placeholder="Nombre" class="form-control">
			</div>
			<button type="submit" class="btn btn-success">Guardar</button>
			<a href="./listar.php" class="btn btn-warning">Volver</a>
		</form>
	</div>
</div>
<?php include_once "pie.php"?>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Mostrrar datos</title>
    <link rel="stylesheet" href="estilos.css">
</head>

<body>
    <?php
    $hostname = "localhost";
    $usuario = "root";
    $password = "";
    $dbname = "equipos_biomedicos";
    $conexion =  mysqli_connect($hostname, $usuario, $password, $dbname);
    ?>
    <br>
    <table class="table table-success table-striped">
        <tr>
            <td>SERIE</td>
            <td>NOMBRE</td>
            <td>MODELO</td>
            <td>ESTADO</td>
            <td>MARCA</td>

        </tr>

        <?php



        $sql = 'SELECT * FROM equipo_biomedico ';
        $resultado = mysqli_query($conexion, $sql);

        while ($mostrar = mysqli_fetch_array($resultado)) {

        ?>
            <tr>
                <td><?php echo $mostrar['serie'] ?></td>
                <td><?php echo $mostrar['nombre'] ?></td>
                <td><?php echo $mostrar['modelo'] ?></td>
                <td><?php echo $mostrar['estado'] ?></td>
                <td><?php echo $mostrar['marca'] ?></td>

            </tr>
        <?php
        }
        ?>

        <!-- Inserar empleado-->

    </table>

    <hr style="color: blue; ">

    <table class="table table-dark table-striped-columns">
        <tr>
            <td>NOMBRE JEFE </td>
            <td>CODIGO SERVICIO</td>

        </tr>

        <?php



        $sql = 'SELECT j.nombre, r.cod_servicio FROM jefe j, record r WHERE j.documento_jefe = r.documento_jefe;';
        $resultado = mysqli_query($conexion, $sql);

        while ($mostrar = mysqli_fetch_array($resultado)) {

        ?>
            <tr>
                <td><?php echo $mostrar['nombre'] ?></td>
                <td><?php echo $mostrar['cod_servicio'] ?></td>


            </tr>
        <?php
        }
        ?>

        <!-- Inserar empleado-->

    </table>


</body>

</html>
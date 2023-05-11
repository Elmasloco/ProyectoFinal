<%-- 
    Document   : index
    Created on : 29/04/2023, 12:40:53 p. m.
    Author     : samue
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Registro</title>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
    </head>
    <body>
        <div class="container">
            <h2>Formulario de registro</h2>
            <form method="POST" action="Controlador">
                <div class="form-group">
                    <label for="nombre">Nombre:</label>
                    <input type="text" class="form-control" id="nombre" placeholder="Ingresa tu nombre" name="nombre" required="">
                </div>
                <div class="form-group">
                    <label for="apellido">Apellido:</label>
                    <input type="text" class="form-control" id="apellido" placeholder="Ingresa tus apellidos" name="apellido" required="">
                </div>
                <div class="form-group">
                    <label for="edad">Edad:</label>
                    <input type="number" class="form-control" id="edad" placeholder="Ingresa tu edad" name="edad">
                </div>
                <div class="form-group">
                    <label for="genero">Género:</label>
                    <select class="form-control" id="genero" name="genero">
                        <option selected disabled>Selecciona tu género</option>
                        <option value="masculino">Masculino</option>
                        <option value="femenino">Femenino</option>
                        <option value="otro">Otro</option>
                    </select>
                </div>
                <div class="form-group">
                    <label for="identificacion">Identificación:</label>
                    <input type="number" class="form-control" id="identificacion" placeholder="Ingresa tu numero de identificacion" name="identificacion"> 
                </div>
                <div class="form-group">
                    <label for="tipoIdentificacion">Típo de identificación:</label>
                    <select class="form-control" id="tipoIdentificacion" name="tipoIdentificacion">
                        <option selected disabled>Selecciona tu tipo de documento</option>
                        <option>C.C.</option>
                        <option>T.I.</option>
                        <option>Otro</option>
                    </select>
                </div>
                <div class="form-group">
                    <label for="tipoRol">Típo de rol:</label>
                    <select class="form-control" id="tipoRol" name="tipoRol" onchange="mostrarInput(this)">
                        <option selected disabled>Selecciona tu rol</option>
                        <option value="User">User</option>
                        <option value="Admin">Admin</option>
                    </select>
                </div>
                <div class="form-group" id="eventoSelect">
                    <label for="tipoEvento">Típo de Evento:</label>
                    <select class="form-control" id="tipoEvento" name="tipoEvento">
                        <option selected disabled>Selecciona el evento</option>
                        <option>Conferencia del reciclaje</option>
                        <option>Foro sobre calentamiento global</option>
                        <option>Actividad "Sembrando miarbolito"</option>
                    </select>
                </div>
                <div class="form-group" style="display: none" id="cargoAdmin">
                    <label for="tipoRol">Típo de rol:</label>
                    <select class="form-control" id="tipoCargo" name="tipoCargo">
                        <option selected disabled>Selecciona tu rol</option>
                        <option>Logistica</option>
                        <option>Organizador principal</option>
                        <option>Presentador</option>
                    </select>
                </div>
                <button name="accion" type="submit" class="btn btn-primary" value="agregar">Enviar</button>
                <a href="principal.jsp" type="button" class="btn btn-secondary">Ver registros</a>
                <a href="iniciarsesion.jsp" type="button" class="btn btn-info">Administradores</a>
                <a href="index.jsp" type="button" class="btn btn-secondary">Volver</a>
            </form>
            <script>
                function mostrarInput(elemento) {
                    let index = elemento.selectedIndex;
                    let opcion = elemento.options[index].value;
                    if(opcion === "Admin"){
                        document.getElementById("cargoAdmin").style.display = "block";
                        document.getElementById("tipoEvento").style.display = "none";
                    }else if(opcion === "User"){
                        document.getElementById("cargoAdmin").style.display = "none";
                        document.getElementById("tipoEvento").style.display = "block";
                    }
                }
            </script>
        </div>
    </body>
</html>
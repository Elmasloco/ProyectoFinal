<%-- 
    Document   : actualizar
    Created on : 29/04/2023, 12:40:53 p. m.
    Author     : samue
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.util.HashMap" %>
<% String id = request.getParameter("id"); %>
<jsp:include page="/Controlador">
    <jsp:param name="accion" value="buscar" />
    <jsp:param name="personaId" value="<%= id %>" />
</jsp:include>
<!DOCTYPE html>
<html>
    <head>
        <title>Actualizar</title>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
    </head>
    <body>
        <div class="container">
            <h2>Formulario de actualizar</h2>
            <% HashMap persona = (HashMap) request.getAttribute("persona"); %>
            <h2>${persona.name}</h2>
            <form method="POST" action="Controlador">
                <input hidden name="id"value="${persona.id}">
                <div class="form-group">
                    <label for="nombre">Nombre:</label>
                    <input type="text" class="form-control" id="nombre" placeholder="Ingresa tu nombre" name="nombre" required  value="${persona.nombre}">
                </div>
                <div class="form-group">
                    <label for="apellido">Apellido:</label>
                    <input type="text" class="form-control" id="apellido" placeholder="Ingresa tus apellidos" name="apellido" required value="${persona.apellido}">
                </div>
                <div class="form-group">
                    <label for="edad">Edad:</label>
                    <input type="number" class="form-control" id="edad" placeholder="Ingresa tu edad" name="edad" value="${persona.edad}">
                </div>
                <div class="form-group">
                    <label for="genero">Género:</label>
                    <select class="form-control" id="genero" name="genero" value="${persona.genero}">
                        <option disabled>Selecciona tu género</option>
                        <option <%= persona.get("genero").equals("masculino") ? "selected" : "" %>  value="masculino">Masculino</option>
                        <option <%= persona.get("genero").equals("femenino") ? "selected" : "" %> value="femenino">Femenino</option>
                        <option <%= persona.get("genero").equals("otro") ? "selected" : "" %> value="otro">Otro</option>
                    </select>
                </div>
                <div class="form-group">
                    <label for="identificacion">Identificación:</label>
                    <input type="number" class="form-control" id="identificacion" placeholder="Ingresa tu numero de identificacion" name="identificacion" value="${persona.documento}"> 
                </div>
                <div class="form-group">
                    <label for="tipoIdentificacion">Típo de identificación:</label>
                    <select class="form-control" id="tipoIdentificacion" name="tipoIdentificacion" value="${persona.tipoDoc}">
                        <option disabled>Selecciona tu tipo de documento</option>
                        <option <%= persona.get("tipoDoc").equals("C.C.") ? "selected" : "" %> >C.C.</option>
                        <option <%= persona.get("tipoDoc").equals("T.I.") ? "selected" : "" %> >T.I.</option>
                        <option <%= persona.get("tipoDoc").equals("Otro") ? "selected" : "" %> >Otro</option>
                    </select>
                </div>
                    <div class="form-group">
                    <label for="tipoRol">Típo de rol:</label>
                    <select class="form-control" id="tipoRol" name="tipoRol" value="${persona.Rol}">
                        <option selected disabled>Selecciona tu rol</option>
                        <option <%= persona.get("Rol").equals("User") ? "selected" : "" %> >User</option>
                        <option <%= persona.get("Rol").equals("Admin") ? "selected" : "" %> >Admin</option>
                    </select>
                </div>
                <a href="principal.jsp" type="button" class="btn btn-secondary">Ver registros</a>
                <button name="accion" type="submit" class="btn btn-primary" value="modificar">Enviar</button>
                <button name="accion" type="submit" class="btn btn-danger" value="eliminar">Eliminar registro</button>
            </form>
        </div>
    </body>
</html>
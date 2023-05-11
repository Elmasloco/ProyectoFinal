<%-- 
    Document   : IniciarSesion
    Created on : 9 may 2023, 17:29:40
    Author     : omont
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.7/dist/umd/popper.min.js" integrity="sha384-zYPOMqeu1DAVkHiLqWBUTcbYfZ8osu1Nd6Z89ify25QV9guujx43ITvfi12/QExE" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/js/bootstrap.min.js" integrity="sha384-Y4oOpwW3duJdCWv5ly8SCFYWqFDsfob/3GkgExXKV4idmbt98QcxXYs9UoXAB7BZ" crossorigin="anonymous"></script>
        <title>Iniciar Sesion</title>
       
        <link href="styleIndex.css" rel="stylesheet" type="text/css"/>
        <link href="Fonts.css" rel="stylesheet" type="text/css"/>
        <link href="Formulario.css" rel="stylesheet" type="text/css"/>
        
        
    </head>
    <body>

        <header>
            <div class="menu_bar">
                <a href="#" class="bt-menu"><span class="icon-menu"></span>Menu</a>
            </div>

            <nav>
                <ul>
                    <li><a href="index.jsp"><span class="icon-user"></span>Volver</a></li>
                    <li><a href="registro.jsp"><span class="icon-profile"></span>Registrarse</a></li>
                    <li><a href="principal.jsp"><span class="icon-eye"></span>Visualizar Registros</a></li>				
                </ul>
            </nav>
        </header>
        <section>
            <div class="container">
                <h2>Inicio de Sesión de administrador</h2>
                <form action="Controlador" method="POST">
                    <div class="form-group">
                        <label for="idIngreso" class="form-control" >ID de Usuario:</label>
                        <input type="text" class="form-control" id="idIngreso" name="idIngreso" placeholder="Ingrese su ID de usuario" required="">
                    </div>
                    <button type="submit" class="btn btn-primary"btn btn-prim name="accion" value="iniciarsesion">Iniciar Sesión</button>
                    
                    
                </form>
            </div>
        </section>
        <script src="http://code.jquery.com/jquery-latest.js"></script> 
        <script src="menu.js"></script> 

        <script type="text/javascript">
            $(document).ready(main);

            var contador = 1;

            function main() {
                $('.menu_bar').click(function () {
                    // $('nav').toggle(); 

                    if (contador == 1) {
                        $('nav').animate({
                            left: '0'
                        });
                        contador = 0;
                    } else {
                        contador = 1;
                        $('nav').animate({
                            left: '-100%'
                        });
                    }

                });

            }
            ;

        </script> 
    </body>
</html>

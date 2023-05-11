<%-- 
    Document   : Menu
    Created on : 8 may 2023, 13:45:38
    Author     : omont
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Menu Principal</title>        
        
        <link href="styleIndex.css" rel="stylesheet" type="text/css"/>
        <link href="Fonts.css" rel="stylesheet" type="text/css"/>
        
    
    <body>
        <header>
            <div class="menu_bar">
                <a href="#" class="bt-menu"><span class="icon-menu"></span>Menu</a>
            </div>

            <nav>
                <ul>
                    <li><a href="iniciarsesion.jsp"><span class="icon-user"></span>Iniciar Sesion</a></li>
                    <li><a href="registro.jsp"><span class="icon-profile"></span>Registrarse</a></li>
                    <li><a href="principal.jsp"><span class="icon-eye"></span>Visualizar Registros</a></li>				
                </ul>
            </nav>
        </header>
        <section>
            <div class="Caja1">
                <p>
                    <iframe width="560" height="300"  src="https://www.youtube.com/embed/dzoEvoKNZQA" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" allowfullscreen></iframe>
                </p>
            </div>
            <div class="Caja2">
                <p>
                    La deforestación en Colombia subió 11 % en el primer semestre de 2022. 
                    Según Minambiente, la Amazonia perdió 54.460 hectáreas. El alza continuaría hasta finales de 2022.
                    Las cifras indican que durante el primer trimestre del 2021 se deforestaron en el país al menos 45.000 hectáreas.
                </p>
            </div>
            <div class="Caja1">
                <p>
                    <iframe width="560" height="300" src="https://www.youtube.com/embed/e6UsY3pQkZs" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" allowfullscreen></iframe>
                </p>
            </div>
            <div class="Caja2">
                <p>
                    La contaminación atmosférica en Colombia
                    Este es uno de los problemas ambientales de mayor preocupación para los colombianos por los impactos 
                    generados tanto en la salud como en el ambiente, además, es el tercer factor generador de costos sociales 
                    después de la contaminación del agua y de los desastres naturales. 
                </p>
            </div>
            <div class="Caja1">
                <p>
                    <iframe width="560" height="300" src="https://www.youtube.com/embed/Rn94yeK3-nc" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" allowfullscreen></iframe>
                </p>
            </div>
            <div class="Caja2">
                <p>
                    En medio de las alertas hechas por parte de la ciudadanía respecto a las altas temperaturas que se sienten 
                    en diferentes zonas del territorio nacional, el Ideam (Instituto de Hidrología, Meteorología y Estudios 
                    Ambientales) explicó a qué se debe. Según detalló la entidad, en vocería de la mayor Carolina Rueda, jefe 
                    de la Oficina de Pronósticos y Alertas de esa organización, el tiempo seco iría hasta el mes de junio.
                </p>
            </div>
            <div class="Caja1">
                <p>
                    <iframe width="560" height="300" src="https://www.youtube.com/embed/rJJHKJe-eEI" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" allowfullscreen></iframe>
                </p>
            </div>
            <div class="Caja2">
                <p>
                    El 50 % de los páramos del mundo está en Colombia. Cubren un área cercana a los tres millones de hectáreas,
                    equivalente a un poco menos del 3 % del territorio continental. En el país existen 37 complejos biogeográficos 
                    de páramo.
                </p>
            </div>
            <div class="Caja1">
                <p>
                    <iframe width="560" height="300" src="https://www.youtube.com/embed/PcYAOvWu1gw" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" allowfullscreen></iframe>
                </p>
            </div>
            <div class="Caja2">
                <p>
                    Minería Ilegal: el parásito silencioso que devora a Colombia
                    La Amazonía está siendo arrasada, entre otras cosas, por el oro. 
                    Lo mismo sucede con el río Sambingo, ubicado en el departamento del Cauca que 
                    ha perdido el agua por la actividad minera ilegal. También ha afectado el Municipio 
                    de Dabeiba en Antioquia y el río Atrato en el Chocó, hoy impactado por el mercurio.

                </p>
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

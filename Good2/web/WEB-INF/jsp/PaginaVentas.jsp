<%-- 
    Document   : PaginaVentas
    Created on : 28-nov-2015, 23:30:27
    Author     : carlii
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Ventas</title>
        <link href="css/Estilos_ventas.css" rel="stylesheet"  >

    <body>
        <div class="encabezado">
            <img src="img/ventas.png">

        </div>
        <div class="encabezadoCenter">
            <h1>Aseguramos las ventas del mañana</h1>
        </div>
        <div class="hora">
            <script languaje="JavaScript">

                var mydate = new Date();
                var year = mydate.getYear();
                if (year < 1000)
                    year += 1900;
                var day = mydate.getDay();
                var month = mydate.getMonth();
                var daym = mydate.getDate();
                if (daym < 10)
                    daym = "0" + daym;
                var dayarray = new Array("Domingo", "Lunes", "Martes", "Miercoles", "Jueves", "Viernes", "Sabado");
                var montharray = new
                        Array("Enero", "Febrero", "Marzo", "Abril", "Mayo", "Junio", "Julio", "Agosto", "Septiembre", "Octubre", "Noviembre", "Diciembre");
                document.write("<small><font color='ffffff' face='Arial'>" + dayarray[day] + " " + daym + " de " + montharray[month] + " de " + year + "</font></small>");

            </script>

        </div>

        <div class="menu-wrapper">
            <ul class="hmenu">
                <li><a href="#">Productos</a>
                    <ul class="sub-menu"> 
                        <li><form method="get"><a href="" type="submit">Inventario</a></form></li>
                        <li><form method="get"><a href="AltaProductos.htm" type="submit">Alta de productos</a></form></li>
                    </ul>
                </li>
                <li><a href="#">Ventas</a>

                    <ul class="sub-menu"> 

                        <li><form method="get"><a href="Proceso_Venta.htm" type="submit">Venta</a></form></li>

                    </ul>

                </li>

                <li><a href="#">Cliente</a>
                    <ul class="sub-menu"> 

                        <li><form method="get"><a href="Mostrar_clientes.htm" type="submit">Consulta de cliente</a></form></li>

                        <li><form method="get"><a href="AltaCliente.htm" type="submit">Alta de cliente</a></form></li>

                    </ul>
                
                </li>

                <li><form><a href="InicioLogin.htm" type="submit">salir</a></form></li>
            </ul>
        </div>
        <div class="enUser">
            <h3>USUARIO: Carla Sandoval</h3>
        </div>
        <div class="enPerfil">
            <h3>PERFIL: Gerente</h3>
        </div>
    </body>
</html>
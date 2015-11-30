<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
    "http://www.w3.org/TR/html4/loose.dtd">
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
                <li><a href="#">Compra</a>
                    <ul class="sub-menu"> 
                        <li><form method="get"><a href="ventas.jsp" type="submit">Nueva</a></form></li>
                        <li><form method="get"><a href="#" type="submit">Historial</a></form></li>
                        <li><form method="get"><a href="#" type="submit">Status/Detalles</a></form></li>
                    </ul>
                </li>
                <li><form><a href="InicioLogin.htm" type="submit">Contacto</a></form></li>

                <li><form><a href="InicioLogin.htm" type="submit">Salir</a></form></li>
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
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
    "http://www.w3.org/TR/html4/loose.dtd">
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Ventas</title>
        <link href="css/estilo.css" rel="stylesheet">

    </head>

    <body >
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

        <div class="main">
            <center>
                <br> 
                <p>Proporcionar usuario y contraseña</p>
                <br>

                <form class="contact_form" action="Inicio_Venta.htm" method="get" onsubmit="return validalogin()" >
                    <ul>
                        <li>
                            <label for="usr" style=" font-size: 120%" >Usuario</label>
                            <input type="text" name="usr" id="usuario" placeholder="Enter user" required>

                        </li>
                        <li>
                            <label for="pwd" style=" font-size: 120%"  >Contraseña</label>
                            <input type="password" name="pw" class="form-control" id="pwd" placeholder="Enter password" size="30"  required>

                        </li>
                        <li>
                         
                            <button TYPE="submit" VALUE="Ingresar" >Ingresar</button>
                        </li>
                    </ul>

                </form>
            </center>
        </div>

        <div class="main2">
            <center>
                <table>
                    <tr>

                        <td></td>
                        <td></td>
                        <td></td>
                        <td></td>
                        <td>
                            <form METHOD="get" ACTION="ChangePasswd.htm" > 
                                <input TYPE="submit" VALUE="Cambiar contraseña"> 

                            </form>
                        </td>
                    </tr>
                </table>

                <br>
                <p>Si tienes problemas para ingresar, comunicate a la extension 2000</p>

            </center>

        </div>
        <script src="js/validaciones.js"></script>
    </body>
</html>

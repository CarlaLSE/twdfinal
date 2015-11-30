<%-- 
    Document   : Inventario
    Created on : 10-nov-2015, 23:54:41
    Author     : carlii
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Inventario</title>
        <link href="css/Estilo_Altac.css" rel="stylesheet">
    </head>
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
        <br>
        <br>
        <br>
        <br>
        <br>
        <br>
    <center><h2 style="font-family: arial" >Inventario</h2></center>

    <table style="width:100%">
        <tr>
            <td><p style="font-family: arial" ><b>Id del producto</b></p></td>
            <td><p style="font-family: arial" ><b>Imagen</b></p></td>
            <td><p style="font-family: arial" ><b>Descripción</b></p></td>
            <td><p style="font-family: arial" ><b>Precio</b></p></td>
            <td><p style="font-family: arial" ><b>Cantidad</b></p></td>
            <td><p style="font-family: arial" ><b>Acción</b></p></td>
        </tr>
        <tr>
            <td>IP001</td>
             <td><img src="img/apelec.jpg" width="20%" height="20%"></td>
            <td>Aparato electronico</td>
            <td>$94</td>
            <td>100</td>
            <td><button>Actualizar</button>
                <button>Editar</button>

            </td>
        </tr>
        <tr>
            <td>IP002</td>
            <td><img src="img/linB.jpg" width="20%" height="20%"></td>
            <td>linea blanca</td>
            <td>$94</td>
            <td>20</td>
            <td><button>Actualizar</button>
                <button>Editar</button>

            </td>
        </tr>
        <tr>
            <td>IP003</td>
             <td><img src="img/vinos.jpg" width="20%" height="20%"></td>
            <td>vinos</td>
            <td>$94</td>
            <td>300</td>
            <td><button>Actualizar</button>
                <button>Editar</button>

            </td>
        </tr>
        <tr>
            <td>IP003</td>
             <td><img src="img/Frtas-y-verduras.jpg" width="20%" height="20%"></td>
            <td>frutas y verduras</td>
            <td>$94</td>
            <td>130</td>
            <td><button>Actualizar</button>
                <button>Editar</button>

            </td>
        </tr>
    </table> 
</body>
</html>

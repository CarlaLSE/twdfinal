<%-- 
    Document   : ventas
    Created on : 11-nov-2015, 0:11:28
    Author     : carlii
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="css/Estilo_procv.css" rel="stylesheet">
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
        <div class="main">
            <br>
            <br>
            <table>
                <tr>
                    <td><label for="foliov" style=" font-size: 120%"  >Folio venta</label></td>
                    <td><input type="text" class="form-control" id="precio" placeholder="Folio de venta" size="30"></td>
                </tr>
                <tr></tr>
                <tr></tr>
                <tr></tr>
                <tr>
                    <td><label for="cliente" style=" font-size: 120%"  >Cliente</label></td>
                    <td><input type="text" class="form-control" id="cliente" placeholder="Folio del cliente" size="30" ></td>
                </tr>
            </table>
            <br>
         
            <table style="width:100%" >
                <tr>
                    <td><p style="font-family: arial" ><b>Nombre</b></p></td>
                    <td><p style="font-family: arial" ><b>Imagen</b></p></td>
                    <td><p style="font-family: arial" ><b>Descripción</b></p></td>
                    <td><p style="font-family: arial" ><b>Precio</b></p></td>
                    <td><p style="font-family: arial" ><b>Cantidad</b></p></td>

                </tr>
                <tr>
                    <td>TV</td>
                    <td><img src="img/apelec.jpg" width="20%" height="20%"></td>
                    <td>Aparato electronico</td>
                    <td>$94</td>
                    <td><input type="text" class="form-control" id="cantidad" placeholder="Cantidad de productos" size="20"></td>

                </tr>
                <tr>
                    <td>Lavadora</td>
                    <td><img src="img/linB.jpg" width="20%" height="20%"></td>
                    <td>linea blanca</td>
                    <td>$100</td>
                    <td><input type="text" class="form-control" id="cantidad" placeholder="Cantidad de productos" size="20"></td>

                </tr>
                <tr>
                    <td>Vino</td>
                    <td><img src="img/vinos.jpg" width="20%" height="20%"></td>
                    <td>vinos</td>
                    <td>$200</td>
                    <td><input type="text" class="form-control" id="cantidad" placeholder="Cantidad de productos" size="20"></td>

                </tr>
                <tr>
                    <td>Manzana</td>
                    <td><img src="img/Frtas-y-verduras.jpg" width="20%" height="20%"></td>
                    <td>frutas y verduras</td>
                    <td>$5</td>
                    <td><input type="text" class="form-control" id="cantidad" placeholder="Cantidad de productos" size="20"></td>

                </tr>
            </table>
             <br>
        <button>Agregar a carrito</button>
        <button>Cancelar</button>
        <br>
        <form action="Paginaventas.htm" method="get">
            <button type="submit">Salir</button>
        </form>
        </div>
       
        <div class="main2">
            <br>
            <br>
            <br>
            <img src="img/carrito-compras.gif">

        </div>

    </body>
</html>

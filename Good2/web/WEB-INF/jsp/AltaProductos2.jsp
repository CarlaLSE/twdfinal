<%@page contentType="text/html" pageEncoding="UTF-8"%> 
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" 
    "http://www.w3.org/TR/html4/loose.dtd"&gt;
    <html>

<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Alta de Productos</title>
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
    <center><h2 align="center" style="font-family: arial" >Registrar Producto</h2></center>

    <h2 style="font-family: arial"></h2>
    <br>

    <div class="main">
        <form class="contact_form" action="Guardar" method="POST">

            <ul>
                <table>
                    <tr></tr>
                    <tr></tr>
                    <tr></tr>
                    <tr>
                        <td><label for="desc" style=" font-size: 120%" >Nombre</label></td>
                        <td><input type="text" name="descripcionprod" class="form-control" id="existencia" placeholder="Nombre de producto" size="30" required></td>



                    </tr>
                    <tr></tr>
                    <tr></tr>
                    <tr></tr>
                    <tr></tr>
                    <tr></tr>
                    <tr></tr>
                    <tr>
                        <td> <label for="existencencia" style=" font-size: 120%">Existencia </label></td>
                        <td><input type="text" class="form-control" id="existencia" placeholder="Cantidad de producto" size="30" required></td>
                    </tr>
                    <tr></tr>
                    <tr></tr>
                    <tr></tr>
                    <tr></tr>
                    <tr></tr>
                    <tr></tr>
                    <tr>

                        <td><label for="precio" style=" font-size: 120%"  >Precio</label></td>
                        <td><input type="text" name="precioprod" class="form-control" id="precio" placeholder="Precio del producto" size="30" required></td>



                    </tr>

                    <tr></tr>
                    <tr></tr>
                    <tr></tr>

                    <tr>

                        <td><label for="status" style=" font-size: 120%"  >Estatus</label></td>
                        <td><input type="text" name="estatusprod" class="form-control" id="status" placeholder="Status" size="30" required></td>

                    </tr>

                    <tr>
                        <!--                        <input type="submit" value="Guardar" name="b1" /> -->
                   
                        <td align="left"> <button class="button" type="submit" value="Guardar" name="b1" >Aceptar</button>
                            <button class="button" type="submit" >Regresar</button></td>
                   
                    </tr>

                </table>

            </ul>

        </form>

        <form method="get" action="PaginaVentas.htm">

        </form>
    </div>
</body>
</html>

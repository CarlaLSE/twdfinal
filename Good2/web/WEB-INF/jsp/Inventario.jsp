<%-- 
    Document   : Inventario
    Created on : 10-nov-2015, 23:54:41
    Author     : carlii
--%>

<%@page import="java.util.Iterator"%>
<%@page import="java.util.ArrayList"%>
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
            <td><p style="font-family: arial" ><b>Descripcion</b></p></td>
            <td><p style="font-family: arial" ><b>Existencia</b></p></td>
            <td><p style="font-family: arial" ><b>Precio</b></p></td>
            <td><p style="font-family: arial" ><b>Status</b></p></td>
            <td><p style="font-family: arial" ><b>Acción</b></p></td>
        </tr>
        <tr>
           <%
            dml.consultas consProd = new dml.consultas();
            ArrayList <Nodos.NProductos> LitProd = consProd.ShowInventario();
            Iterator<Nodos.NProductos> iterador = LitProd.iterator();
            while (iterador.hasNext()) {
                Nodos.NProductos dato = iterador.next();
               out.println("<tr><td>"+dato.getIdproducto()+"</td><td>"+dato.getNombre()+"</td><td>"+dato.getExistencia()+"</td><td>"+dato.getPrecio()+"</td><td>"+dato.getStatus()+"</td><td><button>Actualizar</button><button>Editar</button></td></tr>");
              
            }
            %> 
        </tr>
        
    </table> 
</body>
</html>

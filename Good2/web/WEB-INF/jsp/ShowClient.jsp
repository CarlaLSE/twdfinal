<%-- 
    Document   : ShowClient
    Created on : 28-nov-2015, 23:53:02
    Author     : carlii
--%>

<%@page import="java.util.Iterator"%>
<%@page import="java.util.ArrayList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Clientes</title>
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
    <center><h2 style="font-family: arial" >Clientes</h2></center>

    <table style="width:100%">
        <tr>
            <td><p style="font-family: arial" ><b>Id del cliente</b></p></td>
            <td><p style="font-family: arial" ><b>Nombre</b></p></td>
            <td><p style="font-family: arial" ><b>Telefono</b></p></td>
            <td><p style="font-family: arial" ><b>E-mail</b></p></td>
            <td><p style="font-family: arial" ><b>RFC</b></p></td>
            <td><p style="font-family: arial" ><b>Dirección</b></p></td>
            <td><p style="font-family: arial" ><b>Acción</b></p></td>
        </tr>
        <tr>
            <%
            dml.consultas consCliente = new dml.consultas();
            ArrayList <Nodos.NCliente> LitCliente = consCliente.ShowCliente();
            Iterator<Nodos.NCliente> iterador = LitCliente.iterator();
            while (iterador.hasNext()) {
                Nodos.NCliente dato = iterador.next();
               out.println("<tr><td>"+dato.getIdcliente()+"</td><td>"+dato.getNombre()+"</td><td>"+dato.getTelefono()+"</td><td>"+dato.getEmail()+"</td><td>"+dato.getRfc()+"</td><td>"+dato.getDireccion()+"</td><td>"+dato.getUsuario()+"</td><td>"+dato.getContraseña()+"</td><td>"+dato.getStatus()+"</td><td><button>Actualizar</button><button>Editar</button></td></tr>");
              
            }
            %>
            
            
            <%-- 
            dml.consultas consPrueba = new dml.consultas();
            String x=consPrueba.select();
            out.println("<td>"+x+"</td>");
            --%>
           
            <td><button>Actualizar</button>
                <button>Editar</button>

            </td>
        </tr>
       
    </table> 
</body>
</html>

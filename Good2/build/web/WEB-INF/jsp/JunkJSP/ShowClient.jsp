<%-- 
    Document   : ShowClient
    Created on : 28-nov-2015, 23:53:02
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
            <td>IC001</td>
            
            
            <%-- 
            dml.consultas consPrueba = new dml.consultas();
            String x=consPrueba.select();
            out.println("<td>"+x+"</td>");
            --%>
             <td>Carla Lucero Sandoval Esquivel</td>
             
            <td>7221065206</td>
            <td>mccl.ciscar@gmail.com</td>
            <td>52740</td>
            <td>Jaime Nuno Ocoyoacac</td>
            <td><button>Actualizar</button>
                <button>Editar</button>

            </td>
        </tr>
        <tr>
            <td>IC002</td>
             <td>Carla Lucero Sandoval Esquivel</td>
            <td>7221065206</td>
            <td>mccl.ciscar@gmail.com</td>
            <td>52740</td>
            <td>Jaime Nuno Ocoyoacac</td>
            <td><button>Actualizar</button>
                <button>Editar</button>

            </td>
        </tr>
        <tr>
            <td>IC003</td>
             <td>Carla Lucero Sandoval Esquivel</td>
            <td>7221065206</td>
            <td>mccl.ciscar@gmail.com</td>
            <td>52740</td>
            <td>Jaime Nuno Ocoyoacac</td>
            <td><button>Actualizar</button>
                <button>Editar</button>

            </td>
        </tr>
        <tr>
            <td>IC004</td>
             <td>Carla Lucero Sandoval Esquivel</td>
            <td>7221065206</td>
            <td>mccl.ciscar@gmail.com</td>
            <td>52740</td>
            <td>Jaime Nuno Ocoyoacac</td>
            <td><button>Actualizar</button>
                <button>Editar</button>

            </td>
        </tr>
    </table> 
</body>
</html>

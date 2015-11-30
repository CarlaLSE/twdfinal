<%-- 
    Document   : AltaPersonal
    Created on : 08-nov-2015, 14:10:26
    Author     : carlii
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Alta de personal</title>
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
    <center><h2 style="font-family: arial" >Alta de clientes</h2></center>

    <h2 style="font-family: arial">Llenar campos</h2>
    <br>

    <div class="main">
        <form class="contact_form">

            <ul>
                <table>

                    <tr>
                        <td> <label for="num_control" style=" font-size: 120%">Id cliente</label></td>
                        <td><input type="text" class="form-control" id="num_control" placeholder="Numero de control" size="30" required></td>
                    </tr>


                    <tr></tr>
                    <tr></tr>
                    <tr></tr>
                    <tr>
                        <td><label for="nombre_personal" style=" font-size: 120%"  >Nombre</label></td>
                        <td><input type="text" class="form-control" id="nombre" placeholder="Nombre" size="30" required></td>
                    </tr>


                    <tr></tr>
                    <tr></tr>
                    <tr></tr>
                    <tr>

                        <td><label for="telefono" style=" font-size: 120%"  >Telefono</label></td>
                        <td><input type="number" class="form-control" id="telefono" placeholder="Telefono" size="30" required></td>

                    </tr>
                    <tr></tr>
                    <tr></tr>
                    <tr></tr>
                    
                    
                    
                    <tr>
                        <td><label for="emil" style=" font-size: 120%"  >E-mail</label></td>
                        <td><input type="text" class="form-control" id="email" placeholder="E-mail" size="30" required></td>
                    </tr>
                    <tr></tr>
                    <tr></tr>
                    <tr></tr>
                    
                    
                    
                    <tr>
                        <td><label for="rfc" style=" font-size: 120%"  >RFC</label></td>
                        <td><input type="text" class="form-control" id="rfc" placeholder="RFC" size="30" required></td>
                    </tr>
                    <tr></tr>
                    <tr></tr>
                    <tr></tr>
                    
                    
                    
                    
                    <tr>
                        <td><label for="dr" style=" font-size: 120%"  >Direccion</label></td>
                        <td><input type="text" class="form-control" id="email" placeholder="Direccion" size="30" required></td>
                    </tr>
                    
                    <tr></tr>
                    <tr></tr>
                    <tr></tr>

                    <tr>

                        <td><label for="usuario" style=" font-size: 120%"  >Usuario</label></td>
                        <td><input type="text" class="form-control" id="user" placeholder="Usuario" size="30" required></td>

                    </tr>
                    <tr></tr>
                    <tr></tr>
                    <tr></tr>
                    <tr>

                        <td><label for="contraseña" style=" font-size: 120%"  >Contraseña</label></td>
                        <td><input type="password" class="form-control" id="pwd" placeholder="Contraseña" size="30" required></td>

                    </tr>
                    <tr></tr>
                    <tr></tr>
                    <tr></tr>
                    <tr>

                        <td><label for="status" style=" font-size: 120%"  >Status</label></td>
                        <td><input type="text" class="form-control" id="status" placeholder="Status" size="30" required></td>

                    </tr>
                     
                    <tr>
                      <td> <button type="submit" >Aceptar</button></td>
                    </tr>

                </table>
               
            </ul>

        </form>
        
        <form method="get" action="Paginaventas.htm">
            <table>
                <tr>
                    
                    <td><button type="submit" >Regresar</button></td></td>
             
                </tr>
            </table>
        </form>
    </div>
</body>
</html>

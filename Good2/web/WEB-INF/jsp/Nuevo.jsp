        
<%@page contentType="text/html" pageEncoding="UTF-8"%> 
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" 
    "http://www.w3.org/TR/html4/loose.dtd"&gt;

    <html> 
<head> 
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"> 
    <title>Nuevo Registro</title> 
</head> 
<body> 
    <h2>Por Favor llene los siguientes datos:</h2> 
    <form name="f1" action="Guardar" method="POST"> 
        <table border="0"> 
            <tbody> 
                <tr> 
                    <td> Nombre:</td> 
                    <td>Edad</td> 
                    <td>Direccion:</td> 
                    <td>Correo electronico:</td> 
                </tr> 
                <tr> 
                    <td> 
                        <input type="text" name="nombre" value="" /> 
                    </td> 
                    <td> 
                        <input type="text" name="edad" value="" /> 
                    </td> 
                    <td> 
                        <input type="text" name="direccion" value="" /> 
                    </td> 
                    <td> 
                        <input type="text" name="correo" value="" /> 
                    </td> 
                </tr> 
            </tbody> 
        </table> 
        <input type="submit" value="Guardar" name="b1" /> 
    </form> 
</body> 
</html>
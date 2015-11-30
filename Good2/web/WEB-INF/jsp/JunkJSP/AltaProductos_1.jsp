
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
                    <td>Nombre:</td> 
                    <td>Existencia</td> 
                    <td>Precio</td> 
                    <td>Estatus</td> 
                </tr> 
                <tr>
                    <td> 
                        <input type="text" name="descripcionprod" value="" /> 
                    </td> 
                    <td> 
                        <input type="text" name="existenciaprod" value="" /> 
                    </td> 
                    <td> 
                        <input type="text" name="precioprod" value="" /> 
                    </td> 
                    <td> 
                        <input type="text" name="estatusprod" value="" /> 
                    </td> 
                </tr> 
            </tbody> 
        </table> 
        <input type="submit" value="Guardar" name="b1" /> 
    </form> 
</body> 
</html>
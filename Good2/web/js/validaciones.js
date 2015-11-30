function validalogin()
{
    var usuario = document.getElementById("usuario").value;
    var pass = document.getElementById("pwd").value;
    
    if (usuario === "v" && pass === "v")
    {
        return true;
    } else
    {
        alert("Usurio no existe");
        return false;
    }
}
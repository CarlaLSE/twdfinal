/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Modelo;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Rotciv
 */
import java.io.*; 
import javax.servlet.*; 
import javax.servlet.http.*;

public class Guardar extends HttpServlet {

/** 
* Processes requests for both HTTP <code>GET</code> and <code>POST</code> methods. 
* @param request servlet request 
* @param response servlet response 
*/ 
protected void processRequest(HttpServletRequest request, HttpServletResponse response) 
throws ServletException, IOException { 
response.setContentType("text/html;charset=UTF-8"); 
PrintWriter out = response.getWriter(); 
try { 
String descripcionprod = request.getParameter("descripcionprod"); 
String existenciaprod = request.getParameter("existenciaprod"); 
String precioprod = request.getParameter("precioprod"); 
String estatusprod = request.getParameter("estatusprod"); 





String consulta =   "INSERT INTO twproducto (descripcion, existencia, precio, status) VALUES ('" + descripcionprod + "','" + existenciaprod + "','" + precioprod + "','" + estatusprod + "')";
Conexiones.alta(consulta);
out.println("<h2><center><br>Alta Registrada"); 
out.println("<br><br><a href=Inventario.htm>Ver Productos</a><br><br>"); 
out.println("<a href=AltaProductos.htm>Nuevo Producto</a><br><br>"); 
} finally { 
out.close(); 
} 
}

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}

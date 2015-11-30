package Modelo;

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

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
import java.sql.*;
import javax.servlet.*;
import javax.servlet.http.*;
import javax.swing.*;

public class Listar extends HttpServlet {

    static Connection conexion = null;
    static Statement sentencia = null;
    static ResultSet rs = null;

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        try {
            Class.forName(" org.postgresql.Driver ").newInstance();
            JOptionPane.showMessageDialog(null, "No se pudo cargar el puente JDBC-ODBC.");
//return; 
            conexion = Conexiones.conexion;
            sentencia = Conexiones.conexion.createStatement();
            JOptionPane.showMessageDialog(null, "Conexion establecida");
        } catch (Exception er) {
//JOptionPane.showMessageDialog(null,"Error de conexion" ); 
        }
        try {
            String consulta = "select * from twproducto";

            rs = Conexiones.sentencia.executeQuery(consulta);
            while (rs.next()) {
                out.println(rs.getString("descripcion"));
                out.println(rs.getString("existencia"));
                out.println(rs.getString("precio"));
                out.println(rs.getString("status"));
                out.println("<br><hr>");
            }
            out.println("<a href=AltaProductos2.jsp>Agregar Nuevo</a>");
        } catch (Exception er) {
//JOptionPane.showMessageDialog(null,"Error de conexion" ); 
        }
    }

// <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code."> 
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     */
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     */
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     */
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}

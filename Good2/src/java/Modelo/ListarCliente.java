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
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.*;
import javax.servlet.http.*;
import javax.swing.*;

public class ListarCliente extends HttpServlet {

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
            throws ServletException, IOException, SQLException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        try {
//            Class.forName(" org.postgresql.Driver ").newInstance();
//            JOptionPane.showMessageDialog(null, "No se pudo cargar el puente JDBC-ODBC.");
//return; 
            conexion = Conexiones.conexion;
            Conexiones.conecta();
            sentencia = Conexiones.conexion.createStatement();
//            JOptionPane.showMessageDialog(null, "Conexion establecida");
       
//        try {
            String consulta = "select * from twcliente";

            rs = Conexiones.sentencia.executeQuery(consulta);
            while (rs.next()) {
                out.println(rs.getString(1));
                out.println(rs.getString(2));
                out.println(rs.getString(3));
                out.println(rs.getString(4));
                out.println(rs.getString(5));
                out.println(rs.getString(6));
                out.println(rs.getString(7));
            }
//            while (rs.next()) {
//                out.println(rs.getString("nombrecl"));
//                out.println(rs.getString("telcl"));
//                out.println(rs.getString("emailcl"));
//                out.println(rs.getString("rfccl"));
//                out.println(rs.getString("direccioncl"));
//                out.println(rs.getString("usuariocl"));
//                out.println(rs.getString("contraseñacl"));
//                out.println(rs.getString("statuscl"));
//                out.println("<br><hr>");
//            }

            out.println("<a href=AltaCliente.jsp>Agregar Nuevo Cliente</a>");
            rs.close();
            sentencia.close();

//        } catch (Exception er) {
            rs.close();
            sentencia.close();

//            JOptionPane.showMessageDialog(null, "Error de conexion" + er);
//        }
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
        try {
            processRequest(request, response);
        } catch (SQLException ex) {
            Logger.getLogger(ListarCliente.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     */
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try {
            processRequest(request, response);
        } catch (SQLException ex) {
            Logger.getLogger(ListarCliente.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    /**
     * Returns a short description of the servlet.
     */
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}

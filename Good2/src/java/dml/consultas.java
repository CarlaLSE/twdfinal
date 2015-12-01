/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dml;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

/**
 *
 * @author Cisneros
 */
public class consultas {

    conexion.conexion conn = new conexion.conexion();
    Connection c;
    ResultSet rs;
    Statement st;

    public boolean login(String usuario, String contraseña) throws ClassNotFoundException {

        try {
            c = conn.conexion();
            st = c.createStatement();
            String sql = "select usuario,password from usuario where lower(usuario)=lower('" + usuario + "') and password='" + contraseña + "';";
            st.executeQuery(sql);
            rs = st.getResultSet();
            return rs.next();

        } catch (SQLException ex) {
            System.err.println("error de consulta" + ex.getMessage());
        } finally {
            try {
                c.close();
                st.close();
                rs.close();
            } catch (SQLException ex) {
                System.err.println("err al cerrar conexion" + ex.getMessage());
            }
        }
        return false;
    }

    public ArrayList <Nodos.NCliente> ShowCliente() throws ClassNotFoundException {
        String nombre;
        String telefono;
        int id;
        String email;
        String rfc;
        String direccion;
        String usuario;
        String contraseña;
        String status;
        ArrayList<Nodos.NCliente> lista = new ArrayList<>();

        try {
            c = conn.conexion();
            st = c.createStatement();
            String sql = "select idcliente,nombre, telefono,email,rfc,direccion,usuario,contraseña,status from twcliente;";
            st.executeQuery(sql);
            rs = st.getResultSet();
            while (rs.next()) {
                
                Nodos.NCliente cliente = new Nodos.NCliente();
                id=rs.getInt("idcliente");
                nombre = rs.getString("nombre");
                telefono = rs.getString("telefono");
                email = rs.getString("email");
                rfc=rs.getString("rfc");
                direccion=rs.getString("direccion");
                usuario=rs.getString("usuario");
                contraseña=rs.getString("contraseña");
                status=rs.getString("status");
                
                cliente.setIdcliente(id);
                cliente.setNombre(nombre);
                cliente.setTelefono(telefono);
                cliente.setEmail(email);
                cliente.setRfc(rfc);
                cliente.setDireccion(direccion);
                cliente.setUsuario(usuario);
                cliente.setContraseña(contraseña);
                cliente.setStatus(status);
                lista.add(cliente);
                
            }
            return lista;
        } catch (SQLException ex) {
            System.err.println("error de consulta" + ex.getMessage());
        } finally {
            try {
                c.close();
                st.close();
                rs.close();
            } catch (SQLException ex) {
                System.err.println("err al cerrar conexion" + ex.getMessage());
            }
        }
        return null;
    }
    
    public ArrayList <Nodos.NProductos> ShowInventario() throws ClassNotFoundException {
        String descripcion;
        String existencia;
        int id;
        String precio;
        String status;
        ArrayList<Nodos.NProductos> lista = new ArrayList<>();

        try {
            c = conn.conexion();
            st = c.createStatement();
            String sql = "select idproducto,descripcion, existencia,precio,status from twproducto;";
            st.executeQuery(sql);
            rs = st.getResultSet();
            while (rs.next()) {
                
                Nodos.NProductos producto = new Nodos.NProductos();
                id=rs.getInt("idproducto");
                descripcion = rs.getString("descripcion");
                existencia = rs.getString("existencia");
                precio = rs.getString("precio");
                status=rs.getString("status");
                
                producto.setIdproducto(id);
                producto.setNombre(descripcion);
                producto.setExistencia(existencia);
                producto.setPrecio(precio);
                producto.setStatus(status);
                
                lista.add(producto);
                
            }
            return lista;
        } catch (SQLException ex) {
            System.err.println("error de consulta" + ex.getMessage());
        } finally {
            try {
                c.close();
                st.close();
                rs.close();
            } catch (SQLException ex) {
                System.err.println("err al cerrar conexion" + ex.getMessage());
            }
        }
        return null;
    }
    
        public String select() throws ClassNotFoundException {
        String user = "" ;

        try {
            c = conn.conexion();
            st = c.createStatement();
            String sql = "select * from usuario;";
            st.executeQuery(sql);
            rs = st.getResultSet();
            while (rs.next()) {
                user = rs.getString("usuario");
            }
            return user;
        } catch (SQLException ex) {
            System.err.println("error de consulta" + ex.getMessage());
        } finally {
            try {
                c.close();
                st.close();
                rs.close();
            } catch (SQLException ex) {
                System.err.println("err al cerrar conexion" + ex.getMessage());
            }
        }
        return user;
    }
}

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package conexion;

import java.io.IOException;
import java.net.InetAddress;
import java.sql.*;

/**
 *
 * @author Cisneros
 */
public class conexion {

   Connection conect;
    private final String ip = "192.168.1.75";

    public Connection conexion() throws ClassNotFoundException {

        if (doingPing()) {
            try {
                Class.forName("org.postgresql.Driver");
                conect = DriverManager.getConnection("jdbc:postgresql://" + ip + ":5432/tdw_ventas", "postgres", "postgres");
            } catch (SQLException e) {
                System.out.println("error de conexión " + e.getMessage());
            }
            return conect;
        }
        return null;
    }


    public boolean doingPing() {
        InetAddress ping;
        try {
            ping = InetAddress.getByName(ip);
            if (ping.isReachable(5000)) {
                System.out.println("ping [ok]");
                return true;
            }
        } catch (IOException ex) {
            System.out.println(ex);
        }
        System.err.println("ping [No]");
        return false;
    }
}

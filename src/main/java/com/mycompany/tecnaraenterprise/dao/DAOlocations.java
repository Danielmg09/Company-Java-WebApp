/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.mycompany.tecnaraenterprise.dao;

import com.mycompany.tecnaraenterprise.domain.Location;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;
import java.util.TimeZone;

/**
 *
 * @author daniel
 */
public class DAOlocations {
    
    Connection conexion;
    
    public DAOlocations(){
        try {
            String url ="jdbc:mysql://127.0.0.1:3306/tecnaraenterprise" ;
            String url2 = "jdbc:mysql://localhost:3306/tecnaraenterprise?serverTimezone=" + TimeZone.getDefault().getID();
            String user = "root";
            String password = "Administrator";
            Class.forName("com.mysql.cj.jdbc.Driver");
            this.conexion = DriverManager.getConnection(url2,user,password);
            System.out.println("Conectado");

        }catch(SQLException | ClassNotFoundException ex){
            System.out.println("An error ocurred. Maybe user/password is invalid");
            ex.printStackTrace();
        }
    }
    
    public List<Location> loadLocations(){
        try{
            List<Location> locations = new ArrayList<>();
            String sql = "SELECT * FROM ubicaciones";
            Statement statement = conexion.createStatement();
            ResultSet rs = statement.executeQuery(sql);

            while (rs.next()){
                Location l = new Location (rs.getInt("id"),
                        rs.getString("ubicacion"));
                        
                locations.add(l);
            }
            statement.close();
            return locations;

        }catch (SQLException ex) {
            System.out.println("An error ocurred. Maybe user/password is invalid");
            ex.printStackTrace();
            return null;
        }
    }
    
    public int insertLocation(Location location) {

        String sql = "INSERT INTO ubicaciones (ubicacion) " +
                "VALUES ('"+location.getUbicacion()+"')";

        try {
            Statement sentencia = conexion.createStatement();
            sentencia.executeUpdate(sql);
            sentencia.close();
            return 1;

        }catch(SQLException ex){
            System.out.println("An error ocurred. Maybe user/password is invalid");
            ex.printStackTrace();
            return 0;
        }

    }
    
    public Location deleteLocation(int id){
        Location location = getLocation(id);
        String sql = "DELETE FROM ubicaciones WHERE id = '"+id+"'";
        try {
            Statement sentencia = conexion.createStatement();
            sentencia.executeUpdate(sql);
            sentencia.close();
            return location;

        }catch(SQLException ex){
            ex.printStackTrace();
            return null;
        }

    }

    public int updateLocation(Location location) {
       

        String sql = "UPDATE ubicaciones SET ubicacion = '" +location.getUbicacion()+"'" +
                " WHERE id = '"+location.getId()+"'";

        try {
            Statement sentencia = conexion.createStatement();
            sentencia.executeUpdate(sql);
            sentencia.close();
            return 1;

        }catch(SQLException ex){
            ex.printStackTrace();
            return 0;
        }

    }
    
    public Location getLocation(int id){
        Location location = null;
        try{
            
            String sql = "SELECT * FROM ubicaciones WHERE id='"+id+"'";
            Statement statement = this.conexion.createStatement();
            ResultSet rs = statement.executeQuery(sql);

            if (rs.next()){
                location = new Location (rs.getInt("id"),
                        rs.getString("ubicacion"));
            }
            statement.close();
            return location;

        }catch (SQLException ex) {
            System.out.println("An error ocurred. Maybe user/password is invalid");
            ex.printStackTrace();
        }finally{
            return location;
        }
    }
    
}

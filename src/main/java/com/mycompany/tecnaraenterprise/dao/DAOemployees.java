/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.mycompany.tecnaraenterprise.dao;

import com.mycompany.tecnaraenterprise.domain.Employee;
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
public class DAOemployees {

    Connection conexion;

    public DAOemployees() {
        try {
            String url = "jdbc:mysql://127.0.0.1:3306/tecnaraenterprise";
            String url2 = "jdbc:mysql://localhost:3306/tecnaraenterprise?serverTimezone=" + TimeZone.getDefault().getID();
            String user = "root";
            String password = "Administrator";
            Class.forName("com.mysql.cj.jdbc.Driver");
            this.conexion = DriverManager.getConnection(url2, user, password);
            System.out.println("Conectado");

        } catch (SQLException | ClassNotFoundException ex) {
            System.out.println("An error ocurred. Maybe user/password is invalid");
            ex.printStackTrace();
        }
    }

    public List<Employee> loadEmployees() {
        try {
            List<Employee> employees = new ArrayList<>();
            String sql = "SELECT * FROM empleados JOIN ubicaciones ON empleados.ubicacion = ubicaciones.id";
            Statement statement = conexion.createStatement();
            ResultSet rs = statement.executeQuery(sql);

            while (rs.next()) {
                int id = rs.getInt("id");
                String nombre = rs.getString("nombre");
                int salario = rs.getInt("salario");
                int locationId = rs.getInt("ubicaciones.id");
                String locationName = rs.getString("ubicaciones.ubicacion");
                Location ubicacion = new Location(locationId, locationName);
                Employee e = new Employee(id, nombre, salario, ubicacion);
                employees.add(e);
            }
            statement.close();
            return employees;

        } catch (SQLException ex) {
            System.out.println("An error ocurred. Maybe user/password is invalid");
            ex.printStackTrace();
            return null;
        }
    }

    public Employee deleteEmployee(int id) {
        Employee employee = getEmployee(id);
        String sql = "DELETE FROM empleados WHERE id = '" + id + "'";
        try {
            Statement sentencia = conexion.createStatement();
            sentencia.executeUpdate(sql);
            sentencia.close();
            return employee;

        } catch (SQLException ex) {
            ex.printStackTrace();
            return null;
        }
    }

    public Employee getEmployee(int id) {
        Employee employee = null;
        try {

            String sql = "SELECT * FROM empleados JOIN ubicaciones ON empleados.ubicacion = ubicaciones.id WHERE empleados.id='" + id + "'";
            Statement statement = this.conexion.createStatement();
            ResultSet rs = statement.executeQuery(sql);

            if (rs.next()) {
                int employeeId = rs.getInt("id");
                String nombre = rs.getString("nombre");
                int salario = rs.getInt("salario");
                int locationId = rs.getInt("ubicaciones.id");
                String locationName = rs.getString("ubicaciones.ubicacion");
                Location ubicacion = new Location(locationId, locationName);
                employee = new Employee(employeeId, nombre, salario, ubicacion);
            }
            statement.close();
            return employee;

        } catch (SQLException ex) {
            System.out.println("An error ocurred. Maybe user/password is invalid");
            ex.printStackTrace();
        } finally {
            return employee;
        }

    }

    public int insertEmployee(Employee e) {

        String sql = "INSERT INTO empleados (nombre, salario, ubicacion) "
                + "VALUES ('" + e.getNombre()
                + "','" + e.getSalario()
                + "','" + e.getUbicacion().getId()
                + "')";

        try {
            Statement sentencia = conexion.createStatement();
            sentencia.executeUpdate(sql);
            sentencia.close();
            return 1;

        } catch (SQLException ex) {
            System.out.println("An error ocurred. Maybe user/password is invalid");
            ex.printStackTrace();
            return 0;
        }

    }

    public int updateEmployee(Employee employee) {

        String sql = "UPDATE empleados SET nombre = '" + employee.getNombre() + "'"
                + ", salario = '" + employee.getSalario() + "'"
                + ", ubicacion = '" + employee.getUbicacion().getId() + "'"
                + " WHERE id = '" + employee.getId() + "'";

        try {
            Statement sentencia = conexion.createStatement();
            sentencia.executeUpdate(sql);
            sentencia.close();
            return 1;

        } catch (SQLException ex) {
            ex.printStackTrace();
            return 0;
        }

    }
    
    public List<Employee> EmployeesByLocation(int location) {
        try {
            List<Employee> employees = new ArrayList<>();
            String sql = "SELECT * FROM empleados JOIN ubicaciones ON empleados.ubicacion = ubicaciones.id WHERE empleados.ubicacion='" + location + "'";
            Statement statement = conexion.createStatement();
            ResultSet rs = statement.executeQuery(sql);

            while (rs.next()) {
                int id = rs.getInt("id");
                String nombre = rs.getString("nombre");
                int salario = rs.getInt("salario");
                int locationId = rs.getInt("ubicaciones.id");
                String locationName = rs.getString("ubicaciones.ubicacion");
                Location ubicacion = new Location(locationId, locationName);
                Employee e = new Employee(id, nombre, salario, ubicacion);
                employees.add(e);
            }
            statement.close();
            return employees;

        } catch (SQLException ex) {
            System.out.println("An error ocurred. Maybe user/password is invalid");
            ex.printStackTrace();
            return null;
        }
    }

}

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.mycompany.tecnaraenterprise.domain;

/**
 *
 * @author daniel
 */
public class Employee {
    
    int id;
    String nombre;
    int salario;
    Location ubicacion;

    public Employee(int id, String nombre, int salario, Location ubicacion) {
        this.id = id;
        this.nombre = nombre;
        this.salario = salario;
        this.ubicacion = ubicacion;
    }
    
    public Employee(String nombre, int salario, Location ubicacion) {
        this.nombre = nombre;
        this.salario = salario;
        this.ubicacion = ubicacion;
    }
    
    

    public Employee() {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public int getSalario() {
        return salario;
    }

    public void setSalario(int salario) {
        this.salario = salario;
    }

    public Location getUbicacion() {
        return ubicacion;
    }

    public void setUbicacion(Location ubicacion) {
        this.ubicacion = ubicacion;
    }
    
    
    
    
}

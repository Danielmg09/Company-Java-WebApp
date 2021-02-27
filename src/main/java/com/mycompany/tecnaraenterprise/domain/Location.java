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
public class Location {
    
    int id;
    String ubicacion;

    public Location(int id, String ubicacion) {
        this.id = id;
        this.ubicacion = ubicacion;
    }
    
    public Location(int id) {
        this.id = id;
    }
    
    
    
    public Location(String ubicacion) {
        this.ubicacion = ubicacion;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getUbicacion() {
        return ubicacion;
    }

    public void setUbicacion(String ubicacion) {
        this.ubicacion = ubicacion;
    }
    
    
    
}

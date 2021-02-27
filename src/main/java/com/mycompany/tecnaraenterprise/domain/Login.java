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
public class Login {
    
    
    boolean isLogged;
    String username;
    String role;
    boolean isAdmin = false;
    

    public Login(boolean isLogged, String username, String role) {
        this.isLogged = isLogged;
        this.username = username;
        this.role = role;
        setIsAdmin();
        
        
    }

    public boolean isIsAdmin() {
        return isAdmin;
    }

    public void setIsAdmin() {
        if(role.equals("administrador")){
            this.isAdmin = true;
        }
    }
    
    

    public boolean isIsLogged() {
        return isLogged;
    }

    public void setIsLogged(boolean isLogged) {
        this.isLogged = isLogged;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }
    
    public String getRole(){
        return role;
    }
    
}

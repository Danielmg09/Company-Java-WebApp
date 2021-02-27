/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.mycompany.tecnaraenterprise.service;

import com.mycompany.tecnaraenterprise.dao.DAOusers;
import com.mycompany.tecnaraenterprise.domain.User;
import java.util.List;

/**
 *
 * @author daniel
 */
public class UserService {

    DAOusers dao;

    public UserService() {
        this.dao = new DAOusers();
    }

    public List<User> getUsersList() {
        return dao.getUsersList();
    }

    public boolean authenticateUser(String username, String password) {
        return dao.checkUser(username, password);

    }
    
    public User getUser(String username){
        return dao.getUser(username);
    }

}

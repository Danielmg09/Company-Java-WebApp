/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.mycompany.tecnaraenterprise.service;

import com.mycompany.tecnaraenterprise.dao.DAOlocations;
import com.mycompany.tecnaraenterprise.domain.Location;
import java.util.List;

/**
 *
 * @author daniel
 */
public class LocationService {

    DAOlocations dao = new DAOlocations();

    public List<Location> getLocationsList() {
        return dao.loadLocations();
    }

    public void insertLocation(Location location) {
        dao.insertLocation(location);
    }
    
    public Location deleteLocation(int id){
        return dao.deleteLocation(id);
    }
    
    public void updateLocation(Location location){
        dao.updateLocation(location);
    }
    
    public Location getLocation(int id){
        return dao.getLocation(id);
    }

}

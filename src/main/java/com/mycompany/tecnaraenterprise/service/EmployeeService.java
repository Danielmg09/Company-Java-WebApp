/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.mycompany.tecnaraenterprise.service;

import com.mycompany.tecnaraenterprise.dao.DAOemployees;
import com.mycompany.tecnaraenterprise.domain.Employee;
import com.mycompany.tecnaraenterprise.domain.Location;
import java.util.List;

/**
 *
 * @author daniel
 */
public class EmployeeService {
    
    DAOemployees dao = new DAOemployees();
    
    public List<Employee> getEmployeesList(){
        return dao.loadEmployees();
    }
    
    public Employee deleteEmployee(int id){
        return dao.deleteEmployee(id);
    }
    
    public void addEmployee(Employee employee){
        dao.insertEmployee(employee);
    }
    
    public Employee getEmployee(int id){
        return dao.getEmployee(id);
    }
    
    public void updateEmployee(int id, String nombre, int salario, Location ubicacion){
        Employee employee = new Employee(id,nombre,salario,ubicacion);
        dao.updateEmployee(employee);

    }
    
    public List<Employee> EmployeesByLocation(int location){
        return dao.EmployeesByLocation(location);
    }
    
    
}

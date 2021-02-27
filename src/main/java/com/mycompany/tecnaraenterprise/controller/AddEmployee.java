/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.mycompany.tecnaraenterprise.controller;

import com.mycompany.tecnaraenterprise.domain.Employee;
import com.mycompany.tecnaraenterprise.domain.Location;
import com.mycompany.tecnaraenterprise.service.EmployeeService;
import com.mycompany.tecnaraenterprise.service.LocationService;

import java.io.IOException;

import java.util.List;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author daniel
 */
public class AddEmployee extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        LocationService ls = new LocationService();
        request.setAttribute("locationlist", ls.getLocationsList());
        RequestDispatcher rd = request.getRequestDispatcher("/WEB-INF/addEmployee_jstl.jsp");
        rd.forward(request, response);
    }

    
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        EmployeeService employeeService = new EmployeeService();
        
        String nombre = request.getParameter("nombre");
        int salario = Integer.parseInt(request.getParameter("salario"));
        int ubicacion = Integer.parseInt(request.getParameter("ubicacion"));
        Location location = new Location(ubicacion);
        
        Employee employee = new Employee(nombre, salario,location);
        
        
       
        
        employeeService.addEmployee(employee);
        
        List<Employee> employees = employeeService.getEmployeesList();
        
        HttpSession mySession = request.getSession(true);
        mySession.setAttribute("employees",employees);
        RequestDispatcher rd = request.getRequestDispatcher("/WEB-INF/listEmployees_jstl.jsp");
        rd.forward(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}

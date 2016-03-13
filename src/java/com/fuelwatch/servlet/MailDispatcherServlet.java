/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.fuelwatch.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.fuelwatch.ejb.MailSenderBean;
import javax.ejb.EJB;

/**
 *
 * @author Trevor O'Dwyer
 */
@WebServlet(name = "MailDispatcherServlet", urlPatterns = {"/MailDispatcherServlet"})
public class MailDispatcherServlet extends HttpServlet {
    
    @EJB
    private MailSenderBean mailSender;

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
        response.setContentType("text/html;charset=UTF-8");
        //send to this email address
        String toEmail = "info.fuelwatch@gmail.com";
        String subject = request.getParameter("subject");//get customer ID
        String message = request.getParameter("message");//Get fuel type and amount
        
        //The customer email address that is stored externally on a database or server
        //Hardcoded for the sake of simplicity in this program
        String fromEmail = "info.fuelwatch@gmail.com";//sending to the same test address for this example
        String userName = "Melanie Cunningham";
        String password = "Microlite21";
        
        
        
        
        
        
        
        try (PrintWriter out = response.getWriter()) {
            
            //call to sender bean
            mailSender.sendEmail(fromEmail, userName, password, toEmail, subject, message);
            
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Order Status</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Order Status!!</h1>");
            out.println("<b>Order has been placed successfully</b><br>");
            out.println("Click <a href ='emailClient.jsp'> here</a> to go back");
            out.println("</body>");
            out.println("</html>");
        }
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
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
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

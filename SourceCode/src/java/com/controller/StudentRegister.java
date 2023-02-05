/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package com.controller;

import com.dao.StudentDao;
import com.model.StudentModel;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author VK
 */
@WebServlet(name = "StudentRegister", urlPatterns = {"/StudentRegister"})
public class StudentRegister extends HttpServlet {

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
        try (PrintWriter out = response.getWriter()) {
            String fname=request.getParameter("fname");
            String mname=request.getParameter("mname");
            String lname=request.getParameter("lname");
            String mobile=request.getParameter("mobile");
            String email=request.getParameter("email"); 
            String qual=request.getParameter("qual");
            String gender=request.getParameter("gender");
            String password=request.getParameter("password");   
            
            StudentModel s1=new StudentModel();
            s1.setFname(fname);
            s1.setMname(mname);
            s1.setLname(lname);
            s1.setMobile(mobile);            
            s1.setEmail(email);
            s1.setQual(qual);
            s1.setGender(gender);
            s1.setPassword(password);
            
            StudentDao sd=new StudentDao();
            
            boolean b=sd.savestudent(s1); 
            if(b)
            {
               out.println("<script type=\"text/javascript\">");
               out.println("alert('Registration Successfully!!!')");
               out.println("location=('Login/Login.jsp')");
               out.println("</script>");
            }
            else{
                out.println("<script type=\"text/javascript\">");
               out.println("alert('Error!!!')");
               out.println("location=('Registration/StudentRegister.jsp')");
               out.println("</script>");
            }
            
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

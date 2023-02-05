/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package com.controller;

import com.dao.JobseekerDao;
import com.model.JobseekerModel;
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
@WebServlet(name = "JobseekerRegister", urlPatterns = {"/JobseekerRegister"})
public class JobseekerRegister extends HttpServlet {

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
            String lname=request.getParameter("lname");
            String birth=request.getParameter("birth");
            String gender=request.getParameter("gender");
            String qual=request.getParameter("qual");
            String email=request.getParameter("email");
            String mobile=request.getParameter("mobile");
            String addr=request.getParameter("addr");
            String password=request.getParameter("password");
            
            JobseekerModel t1=new JobseekerModel();
            t1.setFname(fname);
            t1.setLname(lname);
            t1.setBirth(birth);
            t1.setGender(gender);
            t1.setQual(qual);
            t1.setEmail(email);            
            t1.setMobile(mobile);
            t1.setAddr(addr);
            t1.setPassword(password);
            
            JobseekerDao td =new JobseekerDao();
            boolean b=td.savejobseeker(t1);
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
               out.println("location=('Registration/JobseekerRegister.jsp')");
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

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package com.controller;

import com.dao.BusinessmanDao;
import com.dao.JobseekerDao;
import com.dao.StudentDao;
import com.dao.TouristDao;
import com.model.BusinessmanModel;
import com.model.JobseekerModel;
import com.model.StudentModel;
import com.model.TouristModel;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author VK
 */
@WebServlet(name = "LoginServlet", urlPatterns = {"/LoginServlet"})
public class LoginServlet extends HttpServlet {

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
            String email=request.getParameter("email");
            String password=request.getParameter("password");
            
            StudentModel st=new StudentModel();
            st.setEmail(email);
            st.setPassword(password);
            
            StudentDao sd=new StudentDao();
            HttpSession session=request.getSession();
            StudentModel f=sd.StudentLogin(st);
            if(f!=null){
            session.setAttribute("Student", f);
               out.println("<script type=\"text/javascript\">");
               out.println("alert('Login Successfully!!!')");
               out.println("location=('Module/Student/StudentIndex.jsp')");
               out.println("</script>");
           }
            
            else{
                String email1=request.getParameter("email");
                String password1=request.getParameter("password");
                
                TouristModel tm=new TouristModel();
                tm.setEmail(email1);
                tm.setPassword(password1);
                
                TouristDao td=new TouristDao();
                HttpSession session1=request.getSession();
                TouristModel f2=td.TouristLogin(tm);
                
                if(f2!=null){
                session.setAttribute("Tourist", f2);
               out.println("<script type=\"text/javascript\">");
               out.println("alert('Login Successfully!!!')");
               out.println("location=('Module/Tourist/TouristIndex.jsp')");
               out.println("</script>");
                }
                
                else{
                    String email2=request.getParameter("email");
                String password2=request.getParameter("password");
                
                JobseekerModel jm=new JobseekerModel();
                jm.setEmail(email2);
                jm.setPassword(password2);
                
                JobseekerDao jd=new JobseekerDao();
                HttpSession session2=request.getSession();
                JobseekerModel f3=jd.JobseekerLogin(jm);
                
                    if(f3!=null){
                        session.setAttribute("Jobseeker", f3);
                       out.println("<script type=\"text/javascript\">");
                       out.println("alert('Login Successfully!!!')");
                       out.println("location=('Module/Jobseeker/JobskIndex.jsp')");
                       out.println("</script>");
                    }
                    
                    else{
                        String email3=request.getParameter("email");
                        String password3=request.getParameter("password");

                        BusinessmanModel bm=new BusinessmanModel();
                        bm.setEmail(email3);
                        bm.setPassword(password3);

                        BusinessmanDao bd=new BusinessmanDao();
                        HttpSession session3=request.getSession();
                        BusinessmanModel f4=bd.BusinessmanLogin(bm);
                
                        if(f4!=null){
                            session.setAttribute("Businessman", f4);
                           out.println("<script type=\"text/javascript\">");
                           out.println("alert('Login Successfully!!!')");
                           out.println("location=('Module/Businessman/BismanIndex.jsp')");
                           out.println("</script>");
                        }
          
                    else if(email.equals("admin@gmail.com") && password.equals("admin@123")){
                    out.println("<script type=\"text/javascript\">");
                       out.println("alert('Login Successfully!!!')");
                       out.println("location=('Module/Admin/AdminIndex.html')");
                       out.println("</script>");         

                    }
                    else{
                    out.println("<script type=\"text/javascript\">");
                       out.println("alert('Invalid Credential')");
                       out.println("location=('Login/Login.jsp')");
                       out.println("</script>");            

                     }
                    
                    }                    
                }    
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


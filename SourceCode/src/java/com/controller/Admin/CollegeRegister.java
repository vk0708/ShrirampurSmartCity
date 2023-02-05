

package com.controller.Admin;

import com.dao.Admin.CollegeDao;
import com.model.Admin.CollegeModel;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet(name = "CollegeRegister", urlPatterns = {"/CollegeRegister"})
public class CollegeRegister extends HttpServlet {

    
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            
            String name=request.getParameter("name");
            String types=request.getParameter("types");
            String addr=request.getParameter("addr");
            
            CollegeModel cm=new CollegeModel();
            cm.setName(name);
            cm.setTypes(types);
            cm.setAddr(addr);
            
            CollegeDao cd= new CollegeDao();
            boolean b=cd.saveclg(cm);
            
            if(b){
            out.println("<script type=\"text/javascript\">");
               out.println("alert('College is Added :)')");
               out.println("location=('Module/Admin/AdminIndex.html')");
               out.println("</script>");
            }
            else{
                out.println("<script type=\"text/javascript\">");
               out.println("alert('Error!!!')");
               out.println("location=('Module/Admin/AdminIndex.html')");
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

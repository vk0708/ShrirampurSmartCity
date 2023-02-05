package com.controller.Admin;

import com.dao.Admin.NewsDao;
import com.model.Admin.NewsModel;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet(name = "NewsRegister", urlPatterns = {"/NewsRegister"})
public class NewsRegister extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            String typ=request.getParameter("typ");
            String headl=request.getParameter("headl");
            String dis=request.getParameter("dis");
            
            NewsModel nm=new NewsModel();
            nm.setTyp(typ);
            nm.setHeadl(headl);
            nm.setDis(dis);
            
            NewsDao nd=new NewsDao();
            boolean b=nd.savenews(nm);
            
            if(b){
            out.println("<script type=\"text/javascript\">");
               out.println("alert('News is Added :)')");
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

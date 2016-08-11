/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.sv.udb.vista;

import com.sv.udb.controlador.PersonaCtrl;
import com.sv.udb.modelo.Persona;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;


/**
 *
 * @author Ariel
 */
@WebServlet(name = "PersonaServ", urlPatterns = {"/PersonaServ"})
public class PersonaServ extends HttpServlet {

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
       
            String mens="";
           boolean esValido = request.getMethod().equals("POST");         
           if(esValido)
           {       
               String CRUD = request.getParameter("cursBoton");            
               System.out.println("Error "+CRUD);
                switch (CRUD) {
                    case "Guardar":
//                        Persona perobj = new Persona();
//                        perobj.setNombPers(request.getParameter("txtNombre"));
//                        perobj.setApelPers(request.getParameter("txtApellido"));
//                        Part filePart = request.getPart("txtFoto"); // Retrieves <input type="file" name="file">
//                        String fileName = Paths.get(filePart.getSubmittedFileName()).getFileName().toString(); // MSIE fix.
//                        InputStream fileContent = filePart.getInputStream();
//                        perobj.setFotoPers(file);
//                        perobj.setCodiTipoPers(Integer.parseInt(request.getParameter("cmbTipo")));
//                        perobj.setApelPers(request.getParameter("cmbGenero"));
//                        perobj.setApelPers(request.getParameter("txtFechNaci"));
//                        perobj.setApelPers(request.getParameter("txtDUI"));
//                        perobj.setApelPers(request.getParameter("txtNIT"));
//                        perobj.setApelPers(request.getParameter("cmbTipoSangre"));
//                        mens = new PersonaCtrl().guar(perobj) ? "Datos guardados" : "datos NO guardados";
//                        Prestamos objePrestamos = new Prestamos();
//                        objePrestamos.setCodi_pres(  Integer.parseInt(request.getParameter("codiBodeRadi") == null ? "0" : request.getParameter("codiBodeRadi")));
//                        mens = new PrestamosCtrl().guarDevolucion(objePrestamos) ? "Datos Modificados" : "datos NO guardados";
                         break;
                    case "Consultar":
                        break;
                    case "Modificar":
                        if(!request.getParameter("codigo").equals(""))
                        {
                            //                    Prestamos objePrestamos = new Prestamos();
                            //
                            //                    objePrestamos.setCodi_pres(  Integer.parseInt(request.getParameter("codiBodeRadi") == null ? "0" : request.getParameter("codiBodeRadi")));
                            //                      mens = new PrestamosCtrl().guarDevolucion(objePrestamos) ? "Datos Modificados" : "datos NO guardados";
                            
                            
                        }    break;
                    case "Eliminar":
                        if(!request.getParameter("codigo").equals(""))
                        {
                            //                    Prestamos objePrestamos = new Prestamos();
                            //
                            //                    objePrestamos.setCodi_pres(  Integer.parseInt(request.getParameter("codiBodeRadi") == null ? "0" : request.getParameter("codiBodeRadi")));
                            //                      mens = new PrestamosCtrl().guarDevolucion(objePrestamos) ? "Datos Modificados" : "datos NO guardados";
                            
                            
                        }    break;
                  
                        
                    default:
                      
                        break;
                }

               request.setAttribute("mensAler",mens);
               request.getRequestDispatcher("/index.jsp").forward(request, response);
           }    
           else
           {
               response.sendRedirect(request.getContextPath() +"/index.jsp");
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

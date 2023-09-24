/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package es.albarregas.controllers;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Enumeration;
import java.util.HashMap;
import java.util.Iterator;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Iván
 */
public class Formulario extends HttpServlet {

   
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
         response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Salida</title>");    
            out.println("<link rel=\"stylesheet\"type=\"text/css\"href=\""+request.getContextPath()+"/CSS/estilos.css");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet Formulario at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
            String nombre=null;
            if(nombre.equalsIgnoreCase(nombre)){
                out.println("<p>No se han introducido datos</p>");
            }else{
             Enumeration<String> campos = request.getParameterNames();
             
             //Hecho con GetParameterValues()
             String[] gustos;
            out.println("<ul>");
            while(campos.hasMoreElements()){
                nombre=campos.nextElement();
                if(!nombre.startsWith("btn")){
                out.println("<li>El campo " + nombre + 
                        " tiene un valor de " + request.getParameter(nombre)+"</li>");
            }
                gustos=request.getParameterValues("gustos");
            }   
            }
             
            //Hecho con HashMap e Iterator
            HashMap<String,String> mapa=new HashMap<String,String>();
             mapa.put("gustos", "Viaje");
             mapa.put("gustos", "Musica");
             mapa.put("gustos", "Juegos");
        
        Iterator<String> iterator = mapa.keySet().iterator();
       
        while (iterator.hasNext()) {
            String key = iterator.next();
                nombre = mapa.get(key);
            System.out.println("Clave: " + key + ", Valor: " + nombre);
        }
        }
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

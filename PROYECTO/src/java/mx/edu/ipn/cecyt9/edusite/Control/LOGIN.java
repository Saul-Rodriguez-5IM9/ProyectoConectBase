
package mx.edu.ipn.cecyt9.edusite.Control;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.*;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import mx.edu.ipn.cecyt9.edusite.Utilerias.Conexion;

/**
 *
 * @author Alumno
 */
public class LOGIN extends HttpServlet {

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
        response.setContentType("text/html;charset=UTF-8");
        
        PrintWriter out = response.getWriter();
         out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>USUARIO</title>");            
            out.println("</head>");
            out.println("<body>"); 
            
            
        
        String nombre, contra;
        nombre=request.getParameter("TUserName");
        contra=request.getParameter("TContra");
        System.out.println(nombre);
        System.out.println(contra);
        String resp="";
        
        try{
         Conexion Conexion= new Conexion("localhost","lab3","root", "n0m3l0");
            try (Connection Conex = Conexion.getConexion()) {
                Statement st=Conex.createStatement();
                //ResultSet rs=st.executeQuery("Select * from usuario where usuario = '"+nombre+"' and contraseña = '"+contra+"';");
                ResultSet rs=st.executeQuery("SELECT*FROM usuario where usuario='"+nombre+"' and contraseña='"+contra+"';");
                if(rs.next()){
                    
                        resp="USUARIO VÁLIDO, BIENVENIDO";
                        System.out.println("algo anda bien");
                }
                else{
                        resp="Datos no coinciden";
                        System.out.println("algo anda mal");
                }
            }
            System.out.println("IT WORKED :DDD");
        }
        catch(SQLException e){
            System.out.println(e.toString());
            System.out.println("YA VALIO");
        }
        
            /* TODO output your page here. You may use following sample code. */
            out.println("<h1>"+resp+"<h1>");
          out.println("</body>");
            out.println("</html>");
               
        
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

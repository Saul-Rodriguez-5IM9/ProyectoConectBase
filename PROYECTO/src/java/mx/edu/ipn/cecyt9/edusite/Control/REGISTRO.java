
package mx.edu.ipn.cecyt9.edusite.Control;
import java.sql.*;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import mx.edu.ipn.cecyt9.edusite.Utilerias.Conexion;

/**
 *
 * @author Alumno
 */
public class REGISTRO extends HttpServlet {

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
        
        
        String nombre, contra,name, mail, ap, am, tel;
        nombre=request.getParameter("TUserName");
        contra=request.getParameter("TContraseña1");
        mail=request.getParameter("TMail");
        
        name=request.getParameter("TName");
        ap=request.getParameter("TApellidoP");
        am=request.getParameter("TApellidoM");
        tel=request.getParameter("TTelefono");
        
        
        try{
         Conexion Conexion= new Conexion("localhost","lab3","root", "n0m3l0");
         Connection Conex= Conexion.getConexion();
         String query= "Insert into usuario( usuario, contraseña, correo, nombre, apellido_paterno"
                 + ", apellido_materno, telefono) values(?,?,?,?,?,?,?);";
         PreparedStatement st=Conex.prepareStatement(query);
    
         
        
         st.setString(1, nombre);
         st.setString(3,mail);
         st.setString(4,name);
         st.setString(5,ap);
         st.setString(6,am);
         st.setString(7,tel);
         st.setString(2,contra);

         
         st.executeUpdate();
         st.close();
         Conex.close();
            System.out.println("IT WORKED :DDD");
        }
        catch(SQLException e){
            System.out.println(e.toString());
            System.out.println("YA VALIO");
        }
        response.setContentType("text/html;charset=UTF-8");
        
        PrintWriter out = response.getWriter();
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>NOSI</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>REGISTRO EXITOSO, BIENVENIDO,"+nombre+" </h1>");
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

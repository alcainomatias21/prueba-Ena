<%-- 
    Document   : menuprincipal
    Created on : 11-jun-2018, 15:17:09
    Author     : matia
--%>
<%@page import="java.sql.*;" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        
    </head>
    <body>
         <% 
           HttpSession misesion = (HttpSession) request.getSession();
            if(misesion.getAttribute("user") == null){
                response.sendRedirect("error.jsp");
            }
          try{
                Class.forName("com.mysql.jdbc.Driver");
                Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/requerimiento", "root","");
                String query= "SELECT * FROM usuario";
                Statement st=conn.createStatement();
                ResultSet rs=st.executeQuery(query);

                                                     
                                                 
                                 out.print("</table>");
                                  out.println("<p><a href=\"index.jsp\">Cerrar Sesión</a></p>");
                  }catch(SQLException ex){
                throw new SQLException (ex);
            }
      
 
      %>
            <fieldset>
                <legend><h1>Menú Principal</h1></legend>
            
         <div class="Requerimiento">
    <label><a class="bot" href="IngresarRequerimiento.jsp"> Ingresar Requerimiento </a></label>
        </div>
                <br>
    <div class="Requerimiento">
    <label><a class="bot" href="ConsultarRequerimiento.jsp"> Consultar Requerimiento </a></label>
        </div>
                <br>
<div class="Requerimiento">
    <label><a class="bot" href="CerrarRequerimiento.jsp"> Cerrar Requerimiento </a></label>
    </div>
            </fieldset>
        </form>
    </body>
</html>

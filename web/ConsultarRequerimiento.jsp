<%-- 
    Document   : ConsultarRequerimiento
    Created on : 11-jun-2018, 15:43:36
    Author     : matia
--%>
<%@page import="java.sql.*;" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <style>
table, th, td {
    border: 1px solid black;
    border-collapse: collapse;
}
th, td {
    padding: 5px;
    text-align: left;    
}
</style>
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
            <div id="login">
                <legend><h1>Consultar Requerimiento</h1></legend>
        <form action="" method="post">
        <label>Gerencia : <select>
  <option value="h">Seleccionar</option>
  <option value=""></option>
  <option value=""></option>
  <option value=""></option>
</select></label>
        <br>
        <br>
        
        <label>Depto : <select>
  <option value="h">Seleccionar</option>
  <option value=""></option>
  <option value=""></option>
  <option value=""></option>
</select></label>
        <br>
        <br>
        <label>Asignado a :     <select>
  <option value="h">Seleccionar</option>
  <option value=""></option>
  <option value=""></option>
  <option value=""></option>
</select></label>
       
        <input type="submit" value="Buscar">
        
        <br>
        <br>
      <table style="width:100%">
  <tr>
    <th>Gerencia</th>
    <th>Depto</th>
    <th>Asignado a</th>
    <th>Requerimiento</th>
  </tr>
  <tr>
    <td></td>
    <td></td>
    <td></td>
    <td></td>
  </tr>
</table>
        <br>
        <br>
        <label><a href="menuprincipal.jsp">Volver A Menú</a></label>
            </div>
        </fieldset>
        </form>
    </body>
</html>

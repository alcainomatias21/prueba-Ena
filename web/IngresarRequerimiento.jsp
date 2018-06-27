<%-- 
    Document   : IngresarRequerimiento
    Created on : 11-jun-2018, 15:42:11
    Author     : matia
--%>
<%@page import="java.sql.*;" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%-- 
    
--%>
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

                                                     
                                                 
                                 
                  }catch(SQLException ex){
                throw new SQLException (ex);
            }
      
 
      %>
        <fieldset>
                <legend><h1>Ingresar Requerimiento</h1></legend>
                <form action="guardardatos.jsp" method="post">
        <label>Gerencia : <select>
  <option name="gerencia">Seleccionar</option>

   <%
       try
       {
       Class.forName("com.mysql.jdbc.Driver").newInstance();
            Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/requerimiento","root","");
            String query = "SELECT * FROM datos";
            Statement st=conn.createStatement();
                ResultSet rs=st.executeQuery(query);
                while(rs.next())
                {
                    %>
                    <option value=""<%=rs.getInt("id")%>"><%=rs.getString("gerencia")%></option>
                    <%
                }
                
       }
           catch(Exception ex)
           {
               ex.printStackTrace();
               out.print("Erro "+ex.getMessage());
           }
            %>
            
</select></label>
        <br>
        <br>
        

       <label>Depto : <select>
  <option name="depto" >Seleccionar</option>
  <%
       try
       {
       Class.forName("com.mysql.jdbc.Driver").newInstance();
            Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/requerimiento","root","");
            String query = "SELECT * FROM datos";
            Statement st=conn.createStatement();
                ResultSet rs=st.executeQuery(query);
                while(rs.next())
                {
                    %>
                    <option value=""<%=rs.getInt("id")%>"><%=rs.getString("depto")%></option>
                    <%
                }
                
       }
           catch(Exception ex)
           {
               ex.printStackTrace();
               out.print("Erro "+ex.getMessage());
           }
            %>
</select></label>
        
        <br>
        <br>
        <label>Asignar a :     <select>
  <option name="asignar" >Seleccionar</option>
  
  <%
       try
       {
       Class.forName("com.mysql.jdbc.Driver").newInstance();
            Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/requerimiento","root","");
            String query = "SELECT * FROM datos";
            Statement st=conn.createStatement();
                ResultSet rs=st.executeQuery(query);
                while(rs.next())
                {
                    %>
                    <option value=""<%=rs.getInt("id")%>"><%=rs.getString("asignar")%></option>
                    <%
                }
                
       }
           catch(Exception ex)
           {
               ex.printStackTrace();
               out.print("Erro "+ex.getMessage());
           }
            %>
</select></label> 
        <br>
        <br>
        <label>Encargado :         <select>
  <option name="encargado" >Seleccionar</option>
  <%
       try
       {
       Class.forName("com.mysql.jdbc.Driver").newInstance();
            Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/requerimiento","root","");
            String query = "SELECT * FROM datos";
            Statement st=conn.createStatement();
                ResultSet rs=st.executeQuery(query);
                while(rs.next())
                {
                    %>
                    <option value=""<%=rs.getInt("id")%>"><%=rs.getString("encargado")%></option>
                    <%
                }
                
       }
           catch(Exception ex)
           {
               ex.printStackTrace();
               out.print("Error "+ex.getMessage());
           }
            %>
            </select></label> 
        <br>
        <br>
        <label>Requerimiento :   <textarea rows="4" cols="50" name="requerimiento" placeholder="Ingrese Descripcion Del Requerimiento"></textarea></label>
        <br>
        <br>
        <input type="submit" value="guardar"> 
        <label><a href="menuprincipal.jsp">Volver A Menú</a></label>
        </fieldset>
        </form>
                </select>
                
    </body>
</html>

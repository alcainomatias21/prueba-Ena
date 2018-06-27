<%-- 
    Document   : validarusuario
    Created on : 11-jun-2018, 20:58:34
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
            
            try{
            ResultSet rs;
            String user = request.getParameter("Usuario");
            String pass = request.getParameter("password");
                Class.forName("com.mysql.jdbc.Driver");
                
                Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/requerimiento","root","");
                String query = "SELECT user, password FROM usuario WHERE user = '"+user+"'AND password = '"+pass+"'";
                Statement st = conn.createStatement();
                rs = st.executeQuery(query);
                
                if(user.equals("") || pass.equals("")){
                    RequestDispatcher rd = request.getRequestDispatcher("index.jsp");
                    request.setAttribute("user","<div class\"alert alert-danger\" role=\"alert\"> Falta ingresar usuario contraseña</div>");
                    rd.forward(request, response);
                }

                if (!rs.next()){
                    RequestDispatcher rd = request.getRequestDispatcher("index.jsp");
                    request.setAttribute("user","Nombre de usuario o contraseña incorrectos");
                    rd.forward(request, response);
                }
            HttpSession sc = (HttpSession) request.getSession();
                   sc.setAttribute("user",user);
                         sc.setAttribute("pass",pass);
            
            response.sendRedirect("menuprincipal.jsp");
            }catch(SQLException e){
                 e.toString();
            }catch(NullPointerException e){
               System.out.println("Problemas "+ e.getMessage());
            }
            
            
        %>
    </body>
</html>

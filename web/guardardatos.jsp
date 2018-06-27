
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
                try
       {
       Class.forName("com.mysql.jdbc.Driver").newInstance();
            Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/requerimiento","root","");
            String query = "INSERT INTO ingresar (geren,dep,asi,enc,req) "+
                                    "VALUES (?,?,?,?,?)";
            Statement st=conn.createStatement();
                ResultSet rs=st.executeQuery(query);
               
                
       }catch(Exception ex){
           
               ex.printStackTrace();
               out.print("Erro "+ex.getMessage());
           }
            %>
          
    </body>
</html>

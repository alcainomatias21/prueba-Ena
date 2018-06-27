<%-- 
    Document   : index
    Created on : 11-jun-2018, 14:50:26
    Author     : matia
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <form action="validarusuario.jsp" method="post">
            <fieldset>
                <legend><h1>Autentificación</h1></legend>
            <label>Usuario</label>
            <input type="text" name="Usuario" placeholder="Usuario" required="">
            <br>
            <br>
            <label>Password</label>
            <input type="password" name="password" placeholder="password" required="">
            <br>
            <br>
            <input type="checkbox" class="checkbox" >
            <span>Recordar</span>
             <br>
            <br>
            <input type="submit" value="Ingresar">
            </fieldset>
        </form>
        <% 
            String ms = (String)request.getAttribute("user");
            if(ms != null)
                     out.println(ms);
                              ms = null;
        %>
    </body>
</html>

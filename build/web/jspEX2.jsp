<%-- 
    Document   : jspEX2
    Created on : 16 Oct, 2022, 12:54:21 PM
    Author     : Vaibhav Kumbharikar
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <form action="jspEX2.jsp">
            a : <input type="number" name="txt1"><br><br>
            b : <input type="text" name="txt2"><br><br>
        Result : <input type="text" value="<%
               try{
                   int a = Integer.parseInt(request.getParameter("txt1"));
                   int b = Integer.parseInt(request.getParameter("txt2"));
                   int c = a + b;
                   out.println(c);
               }
               catch (Exception e){
                   out.println(e);
               }
               %>"><br><br>
        <input type="submit" value="submit">
        </form>
    </body>
</html>

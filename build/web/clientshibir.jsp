<%-- 
    Document   : clientvideo
    Created on : 23 Jan, 2023, 6:15:57 PM
    Author     : Vaibhav Kumbharikar
--%>

<%@page contentType="text/html" pageEncoding="UTF-8" import="java.sql.*"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Yoga | Videos</title>
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
    </head>
    <body>
        <table class="table table-stripped">
            <tr class="text-primary">
                <th>Yoga Video ID</th>
                <th>Disease Name</th>
                <th>Yoga Name</th>
                <th>Yoga Video Link</th>
            </tr>
            
            <%
                try
                {
                    Class.forName("com.mysql.jdbc.Driver");
                    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3308/ya","root","");
                    Statement st = con.createStatement();
                    ResultSet rs = st.executeQuery("select * from yogavideo");
                    
                    while(rs.next())
                    {
                        out.println("<tr>");
                        out.println("<td>"+rs.getInt(1));
                        out.println("<td>"+rs.getString(2));
                        out.println("<td>"+rs.getString(3));
                        String link = rs.getString(4);
                        out.println("<td><a href="+link+" target='_blank'>Link</a>");
                    }
                }
                
                catch(Exception e)
                {
                    out.println(e);
                }
            %>
              
        </table>
    </body>
</html>
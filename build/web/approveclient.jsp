<%-- 
    Document   : approveclient
    Created on : 23 Jan, 2023, 1:35:25 PM
    Author     : Vaibhav Kumbharikar
--%>

<%@page contentType="text/html" pageEncoding="UTF-8" import="java.sql.*"%>
<%
                try
                {
                    Class.forName("com.mysql.jdbc.Driver");
                    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3308/ya","root","");
                    Statement st = con.createStatement();
                    int id = Integer.parseInt(request.getParameter("id"));
                    st.executeUpdate("update client set cflag=1 where client_id="+id+"");
                    st.close();
                    response.sendRedirect("clientlist.jsp");
                }
                
                catch(Exception e)
                {
                    out.println(e);
                }
            %>

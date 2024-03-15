<%-- 
    Document   : Custlogin
    Created on : 20 Nov, 2022, 10:34:17 AM
    Author     : Vaibhav Kumbharikar
--%>

<%@page contentType="text/html" pageEncoding="UTF-8" import="java.sql.*"%>
<%
    try
    {
        String cemail = "'" + request.getParameter("txtemail")+"'";
        String cpass = "'" + request.getParameter("txtpass")+"'";
        
        Class.forName("com.mysql.jdbc.Driver");
        Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3308/ya","root","");
        Statement st = con.createStatement();
        st.executeQuery("select * from client where email='+cemail+' AND password='+cpass+'");
        //out.print();
        ResultSet rs = st.executeQuery();
        
        where(rs.next())
                {
                    if(cemail.equals(email)&&cpass.equals(password))
                    {
                        
                    }
                }
        st.close();
        con.close();
        response.sendRedirect("NEWHOME.html");
    }
    catch( Exception e)
    {
        out.println(e);
    }
%>
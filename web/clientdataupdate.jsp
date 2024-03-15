<%-- 
    Document   : clientprofile
    Created on : 17 Feb, 2023, 2:47:52 PM
    Author     : Vaibhav Kumbharikar
--%>

<%@page contentType="text/html" pageEncoding="UTF-8" import="java.sql.*"%>
<%
    try
    {
        String em = "'" + request.getParameter("t1")+"'";
        String mobile = "'" + request.getParameter("t3")+"'";
        String pera = "'" + request.getParameter("t4")+"'";
        String cura = "'" + request.getParameter("t5")+"'";
        
        Class.forName("com.mysql.jdbc.Driver");
        Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3308/ya","root","");
        Statement st = con.createStatement();
        String q = "update client set mno="+mobile+", permananta="+pera+", currenta="+cura+" where email="+em+"";
//        out.print(q);
        
        st.executeUpdate(q);
        
        st.close();
        con.close();
        response.sendRedirect("clientprofile.jsp");
    }
    catch( Exception e)
    {
        out.println(e);
    }
%>

            <a href="clientdataupdate.jsp" class="bigbtn btn btn-primary">Update Details</a>
            <a href="clientdashboard.jsp" class="btn btn-danger">Dashboard</a>
        </form>    
    </body>
</html>

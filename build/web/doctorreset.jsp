<%-- 
    Document   : clientloginvalidate
    Created on : 11 Dec, 2022, 10:13:55 AM
    Author     : Vaibhav Kumbharikar
--%>

<%@page contentType="text/html" pageEncoding="UTF-8" import="java.sql.*"%>
<%
    try 
    {
        String u = request.getParameter("t1");
        String p = request.getParameter("t2");
        String newpass = request.getParameter("t3");
        
        Class.forName("com.mysql.jdbc.Driver");
        Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3308/ya", "root", "");
        Statement st = con.createStatement();
        ResultSet rs = st.executeQuery("select email, aadhaarno from doctor where email='"+u+"'");

        
        if(rs.next())
        {
            String u2 = rs.getString(1);
            String p2 = rs.getString(2);
            
            if(u.equals(u2) && p.equals(p2))
        {   
        

        String q = "update doctor set password='"+newpass+"' where email='"+u+"'";
        out.print(q);
        
        st.executeUpdate(q);
        
        st.close();
        con.close();

        out.println("<script>alert('Password Reset Successfully..!!');</script>");
            request.getRequestDispatcher("Doclogin.html").include(request, response);
//            response.sendRedirect("doctorforgot.jsp");
        }
        
        else
        {
            out.println("<script>alert('Enter Valid Credentials..!!');</script>");
            request.getRequestDispatcher("doctorforgot.jsp").include(request, response);
        }
        
    }
    }
    catch (Exception e)
    {
        out.println(e);
    }

%>
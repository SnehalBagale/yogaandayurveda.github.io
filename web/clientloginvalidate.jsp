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
        int c = 0;
        Class.forName("com.mysql.jdbc.Driver");
        Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3308/ya", "root", "");
        Statement st = con.createStatement();
        ResultSet rs = st.executeQuery("select email, password, cflag from client");
        int flag = 0;
        
        while(rs.next())
        {
            String u2 = rs.getString(1);
            String p2 = rs.getString(2);
            int cf = rs.getInt(3);
            
            if(u.equals(u2) && p.equals(p2) && cf==1)
            {
                flag = 1;
                break;
            }
        }
        
        if(flag==1)
        {
            session.setAttribute("cname",u);
            response.sendRedirect("clientdashboard.jsp");
        }
        
        else
        {
            out.println("<script>alert('Enter Valid Details');</script>");
            request.getRequestDispatcher("Custlogin.html").include(request, response);
            
        }
        
    }

    catch (Exception e)
    {
        out.println(e);
    }

%>
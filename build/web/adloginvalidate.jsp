<%-- 
    Document   : adloginvalidate
    Created on : 25 Dec, 2022, 9:54:08 AM
    Author     : Vaibhav Kumbharikar
--%>

<%@page contentType="text/html" pageEncoding="UTF-8" import="java.sql.*"%>
<%
    try 
    {
        String u = request.getParameter("t1");
        String p = request.getParameter("t2");
        
        Class.forName("com.mysql.jdbc.Driver");
        Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3308/ya", "root", "");
        Statement st = con.createStatement();
        ResultSet rs = st.executeQuery("select username, password from admin");
        int flag = 0;
        
        while(rs.next())
        {
            String u2 = rs.getString(1);
            String p2 = rs.getString(2);
            
            if(u.equals(u2) && p.equals(p2))
            {
                flag = 1;
                break;
            }
        }
        
        if(flag==1)
        {
            session.setAttribute("cname",u);
            response.sendRedirect("admindashboard.jsp");
        }
        
        else
        {
            out.println("<script>alert('Enter Valid Details');</script>");
            request.getRequestDispatcher("AdLogin.html").include(request, response);
        }
        
    }

    catch (Exception e)
    {
        out.println(e);
    }

%>

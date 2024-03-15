<%-- 
    Document   : clientprofile
    Created on : 17 Feb, 2023, 2:47:52 PM
    Author     : Vaibhav Kumbharikar
--%>

<%@page contentType="text/html" pageEncoding="UTF-8" import="java.sql.*"%>
<% ResultSet rs=null;
%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
               
    <!-- FONTS -->
    <link rel="preconnect" href="https://fonts.googleapis.com"><link rel="preconnect" href="https://fonts.gstatic.com" crossorigin><link href="https://fonts.googleapis.com/css2?family=Montserrat:wght@100;400;900&display=swap" rel="stylesheet">
    <link rel="preconnect" href="https://fonts.googleapis.com"><link rel="preconnect" href="https://fonts.gstatic.com" crossorigin><link href="https://fonts.googleapis.com/css2?family=Josefin+Sans:wght@200;300;400;500&family=Titillium+Web:wght@200;400;700&display=swap" rel="stylesheet">
    <link rel="preconnect" href="https://fonts.googleapis.com"><link rel="preconnect" href="https://fonts.gstatic.com" crossorigin><link href="https://fonts.googleapis.com/css2?family=Comfortaa:wght@300;400;600&display=swap" rel="stylesheet">
    <link rel="preconnect" href="https://fonts.googleapis.com"><link rel="preconnect" href="https://fonts.gstatic.com" crossorigin><link href="https://fonts.googleapis.com/css2?family=Saira:wght@200;300;400;500&display=swap" rel="stylesheet">
    <link rel="preconnect" href="https://fonts.googleapis.com"><link rel="preconnect" href="https://fonts.gstatic.com" crossorigin><link href="https://fonts.googleapis.com/css2?family=Abel&display=swap" rel="stylesheet">

    <!-- BOOTSTRAP -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
    <link rel="stylesheet" href="css/style.css">

    <!-- ICONS -->
    <script src="https://kit.fontawesome.com/ae6fe48316.js" crossorigin="anonymous"></script>
  
    <style>
        *{
    margin: 0;
    padding: 0;
}

body{
    background-color: #C3F8FF;
    /* background-image: url(/bg1.jpg); */
    background-repeat: no-repeat;
    background-size: cover;
}
        h1{
            font-family: josefin sans;
            font-size: 4em;
            text-align: center;
            margin: 0.9em auto;
}

input{
    background-color: white;
}

.image{
        text-align: center;
}
img{
    width: 170px;
    height: 170px;
    border-radius: 100px;
}
    </style>

    </head>
    <body>
        <h1>Your Profile</h1>
        <!--<div class="image"><img src="doctor.jpg"></div>-->  
        <form class="form-horizontal" action="clientdataupdate.jsp" method="post">
            <%
                
                String p="'"+(String)session.getAttribute("cname")+"'";
                
                try
                {
                    Class.forName("com.mysql.jdbc.Driver");
                    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3308/ya","root","");
                    Statement st = con.createStatement();
                    rs = st.executeQuery("select client_id, email, full_name, mno, permananta, currenta from client where email="+p+"");
                    rs.next();
                }
                
                catch(Exception e)
                {
                    out.println(e);
                }
            %>

            Client ID : <input type="text" name="t0" value="<%=rs.getInt(1)%>" readonly>
            Email : <input type="text" name="t1" value="<%=rs.getString(2)%>" readonly>
            Name : <input type="text" name="t2" value="<%=rs.getString(3)%>" readonly>
            Mobile No : <input type="text" name="t3" value="<%=rs.getString(4)%>">
            Permanent Address : <input type="text" name="t4" value="<%=rs.getString(5)%>">
            Current Address  : <input type="text" name="t5" value="<%=rs.getString(6)%>">
<!--            Aadhaar No : <input type="text" name="t1" value="" readonly><br><br>-->
<!--          Pan No : <input type="text" name="t1" value=" readonly>
            Permanent Address : <input type="text" name="t1" value="" readonly>
            Current Address : <input type="text"  name="t1" value="" readonly>-->
<br><br><br><br>            
            <!--<a href="clientdataupdate.jsp" class="bigbtn btn btn-primary">Update Details</a>-->
            
            <input type="submit" value="submit" class="btn btn-primary">
			&nbsp;&nbsp;&nbsp;
			<a href="clientdashboard.jsp" class="btn btn-danger">Dashboard</a>
                        
        </form>    
    </body>
</html>

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
    
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Roboto:wght@100;300;400;500&family=Ubuntu:wght@300;400&display=swap" rel="stylesheet">
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Josefin+Sans:wght@100;200;300;400&display=swap" rel="stylesheet">
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Cinzel:wght@400;500;600&family=Cormorant+Garamond:wght@300;400;500&family=Josefin+Sans:wght@100;200;300;400&family=Montserrat:wght@100;300;400;500&family=Poppins:ital,wght@0,100;0,500;0,600;1,200;1,300;1,400&family=Raleway:wght@100;300;400;500;600&family=Roboto:wght@100;300;400;500;700&family=Rubik:wght@300;400;500&family=Tangerine:wght@400;700&family=Ubuntu:wght@300;400;500&display=swap" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css2?family=Montserrat:ital,wght@0,500;1,500&display=swap" rel="stylesheet">
        
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
    /*background-image: url(drprescripted.png);*/
    background-repeat: no-repeat;
    background-size: cover;
}
        h1{
            font-family: josefin sans;
            font-size: 4em;
            text-align: center;
            margin: 0.9em auto 0;
            color: #0d6efd;
}

h2{
    font-family: Montserrat,titillium web;
    font-size: 2em;
    font-weight: 400;
    margin: 0 1em;
    padding: 1em 0;
    text-align: center;
}


span{
    font-size: 1.4em;
    margin-bottom: 15px;
}

input[readonly].i1{
    background-color: #fff;
    font-size: 1.2em;
}

.btn{
    font-size: 1.2em;
}

input[readonly].i1{
    background-color: #fff;
    font-size: 1.2em;
}

.image{
    text-align: center;
}
    </style>

    </head>
    <body>
        <h1>Your Profile</h1>
        <br><br>
        <div class="row">
            <div class="col-lg-4"></div>
            <div class="col-lg-4 d-flex">
        <div class="image"><img width="50%" src="doctor.jpg"></div>
                        <div class="col-lg-4"></div>
            </div>
    </div>
        <br><br>
        <form class="form-horizontal" action="consultdata.jsp" method="post">
            <%
                
                String p="'"+(String)session.getAttribute("cname")+"'";
                
                try
                {
                    Class.forName("com.mysql.jdbc.Driver");
                    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3308/ya","root","");
                    Statement st = con.createStatement();
                    rs = st.executeQuery("select client_id, full_name, email, mno, ano, panno, permananta, currenta from client where email="+p+"");
                    rs.next();
                }
                
                catch(Exception e)
                {
                    out.println(e);
                }
            %>

            <div class="row">
                <div class="col-lg-1"></div>
            <div class="col-lg-2">
                <span>Client ID : </span><input type="text" name="t0" class="form-control i1" value="<%=rs.getInt(1)%>" readonly>
            </div>
            <div class="col-lg-3">
            <span>Name : </span><input type="text" name="t1" class="form-control i1" value="<%=rs.getString(2)%>" readonly>
            </div>
            <div class="col-lg-3">
            <span>Email : </span><input type="text" name="t1" class="form-control i1" value="<%=rs.getString(3)%>" readonly>
            </div>
            <div class="col-lg-2">
            <span>Mobile No : </span><input type="text" name="t1" class="form-control i1" value="<%=rs.getString(4)%>" readonly>
            </div>
            </div>
            <br>
            
            <div class="row">
            <div class="col-lg-1"></div>
            
            <div class="col-lg-2">
            <span>Aadhaar No : </span><input type="text" name="t1" class="form-control i1" value="<%=rs.getString(5)%>" readonly>
            </div>
            <div class="col-lg-2">
            <span>Pan No : </span><input type="text" name="t1" class="form-control i1" value="<%=rs.getString(6)%>" readonly>
            </div>
            <div class="col-lg-3">
            <span>Permanent Address : </span><input type="text" name="t1" class="form-control i1" value="<%=rs.getString(7)%>" readonly>
            </div>
            <div class="col-lg-3">
            <span>Current Address : </span><input type="text"  name="t1" class="form-control i1" value="<%=rs.getString(8)%>" readonly>
            </div>
            </div>
            <br>
            
            
            <br><br>
                <div align="center">
                    <a href="clientdetailsupdate.jsp" class="bigbtn btn btn-dark">Update Details</a>
                    <a href="clientdashboard.jsp" class="btn btn-outline-dark">Dashboard</a>
                </div>
            
        </form>    
    </body>
</html>

<%-- 
    Document   : enrollshibir
    Created on : 29 Jan, 2023, 9:49:48 AM
    Author     : Vaibhav Kumbharikar
--%>

<%@page contentType="text/html" pageEncoding="UTF-8" import="java.sql.*"%>
<%! ResultSet rs=null;
    ResultSet rs2=null;
%>
<!DOCTYPE html>

<html>
    <head>
        <title>Yoga | Enroll Shibir</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
       
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
    background-color: #bcffb7;
    background-image: url(drprescripted.png);
    background-repeat: no-repeat;
    background-size: cover;
}
        h1{
            font-family: josefin sans;
            font-size: 4em;
            text-align: center;
            margin: 0.9em auto 0;
            color: #00710b;
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

.col2{
    padding: 0;
}
    </style>
  
    </head>

<%
    String doctorname = "'"+(String)session.getAttribute("dname")+"'";
    //out.println(doctorname);
    
try
{
                    Class.forName("com.mysql.jdbc.Driver");
                    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3308/ya","root","");
                    Statement st = con.createStatement();
                    rs2 = st.executeQuery("select fullname from doctor where email="+doctorname+"");
                    rs2.next();
                }
                
                catch(Exception e)
                {
                    out.println(e);
                }
%>
    
<%
    int id = Integer.parseInt(request.getParameter("id"));
    session.setAttribute("cid",id);
try
{
                    Class.forName("com.mysql.jdbc.Driver");
                    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3308/ya","root","");
                    Statement st = con.createStatement();
                    rs = st.executeQuery("select cid, cname, symptom, adate from consultation where cid="+id+"");
                    rs.next();
                    
                }
                
                catch(Exception e)
                {
                    out.println(e);
                }
%>



    <body>

        
 <h1>Prescribe</h1><br><br>
<form class="form-horizontal" action="drprescriptdata.jsp" method="post">
  <div class="row">

    <div class="col-lg-1"></div>
    <div class="col-lg-1">
      <span>Cons. ID : </span><input type="text" class="form-control i1" name="t1" value="<%=rs.getInt(1)%>" readonly>
    </div>
    <div class="col-lg-3">
      <span>Client Name : </span><input type="text" class="form-control i1" name="t2" value="<%=rs.getString(2)%>" readonly>
    </div>
  </div>
    <br>
    
  <div class="row">
    <div class="col-lg-1"></div>
    <div class="col-lg-4">
      <span>Symptom : </span><input type="text" class="form-control i1" name="t3" value="<%=rs.getString(3)%>" readonly>
    </div>
  </div>
    <br>
    
  <div class="row">
    <div class="col-lg-1"></div>
    <div class="col-lg-2">
      <span>Applied Date : </span><input type="text" class="form-control i1" name="t4" value="<%=rs.getString(4)%>" readonly>
    </div>
 
    <div class="col-lg-2">
      <span>Consult Date : </span><input type="text" class="form-control i1" name="t5" value="<%
                    java.util.Date d=new java.util.Date();
                    int dd=d.getDate();
                    
                    int mm=d.getMonth()+1;
                    int yy=d.getYear()-100;
                    String yyyy=" 20"+yy; String dated=yyyy+"-"+mm+"-"+dd; out.println(dated); %>" readonly>
    </div>
  </div>
    <br> 
   
  <div class="row">
    <div class="col-lg-1"></div>
  <div class="col-lg-4">
    <span>Prescription : </span><textarea class="form-control" name="t6" rows="1"></textarea>
  </div>
  </div>
  <br><br>
  <div class="row">
    <div class="col-lg-1"></div>
    <div class="col-lg-4">
  <div align="center">
      <input type="submit" value="submit" class="btn btn-dark">
  &nbsp;&nbsp;&nbsp;
  <a href="drdashboard.jsp" class="btn btn-outline-dark">Dashboard</a>
  </div>
    </div>
   
   
   
  
  
  </form>

    </body>
</html>
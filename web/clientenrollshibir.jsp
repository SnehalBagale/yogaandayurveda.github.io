<%-- 
    Document   : clientenrollshibir
    Created on : 28 Jan, 2023, 2:54:39 PM
    Author     : Vaibhav Kumbharikar
--%>

<%@page errorPage="error.jsp" contentType="text/html" pageEncoding="UTF-8" import="java.sql.*"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Yoga | Enroll Shibir</title>
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
  
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
    /*background-color: #C3F8FF;*/
     background-image: url(enroll.jpg); 
    background-repeat: no-repeat;
    background-size: cover;
}
        h1{
            font-family: josefin sans;
            font-size: 5em;
            text-align: center;
            margin: 0.9em auto;
            color: #000;
}

.table{
    width:90%;
    margin: auto;
}

.tbhead{
    font-family: Montserrat,titillium web;
    font-weight: 500;
    font-size: 2.7em;
    margin: 0 1em;
    padding: 1em 0;
    color: #000;
    border-bottom: 2px solid white;
}

.tdrow{
    font-family: ubuntu, comfortaa;
    font-weight: 400;
    font-size: 2em;
    border-bottom: 2px solid white;
}

a{
    color: blueviolet;
    text-decoration: none;
}

a:hover{
    color: #0d6efd;
    text-decoration: underline;
}

.btn{
    font-size: 2em;
    margin:20px 0 20px 0;
    border-radius: 5px;
}
    </style>
    
    </head>
    <body>
        <h1>Enroll for Shibir</h1>
        <table class="table table-stripped">
            <tr class="text-primary">
                <th class="tbhead">Sh. Id</th>
                <th class="tbhead">Shibir Name</th>
                <th class="tbhead">City</th>
                <th class="tbhead">Address</th>
                <th class="tbhead">Start date</th>
                <th class="tbhead">End date</th>
                <th class="tbhead">Fees</th>
                <th class="tbhead">Limit</th>
                <th class="tbhead">Enroll</th>
            </tr>
            
            <%
                try
                {
                    Class.forName("com.mysql.jdbc.Driver");
                    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3308/ya","root","");
                    Statement st = con.createStatement();
                    ResultSet rs = st.executeQuery("select * from yogashibir");
                    
                    while(rs.next())
                    {
                        out.println("<tr>");
                        int p = rs.getInt(1);
                        out.println("<td class='tdrow'>"+rs.getInt(1));
                        out.println("<td class='tdrow'>"+rs.getString(2));
                        out.println("<td class='tdrow'>"+rs.getString(3));
                        out.println("<td class='tdrow'>"+rs.getString(4));
                        out.println("<td class='tdrow'>"+rs.getString(5));
                        out.println("<td class='tdrow'>"+rs.getString(6));
                        out.println("<td class='tdrow'>"+rs.getInt(7));
                        out.println("<td class='tdrow'>"+rs.getInt(8));
                        out.println("<td class='tdrow'><a href=enrollshibir.jsp?id="+p+">Enroll</a>");
                    }
                }
                
                catch(Exception e)
                {
                    out.println(e);
                }
            %>
              
        </table><br><br>
        
        <h1>Already Enrolled</h1>
        
        <table class="table table-stripped">
            <tr class="text-primary">
                <th class="tbhead">Sh. Id</th>
                <th class="tbhead">Sh. Name</th>
                <th class="tbhead">City</th>
                <th class="tbhead">Address</th>
                <th class="tbhead">Start date</th>
                <th class="tbhead">End date</th>
                <th class="tbhead">Fees</th>
                <th class="tbhead">Limit</th>
            </tr>
            
<%
                
    String clientid = "'"+(String)session.getAttribute("cname")+"'";
                try
                {
                    Class.forName("com.mysql.jdbc.Driver");
                    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3308/ya","root","");
                    Statement st = con.createStatement();
                    ResultSet rs5 = st.executeQuery("select full_name from client where email="+clientid+"");
                    rs5.next();
                    String na = rs5.getString(1);
//                    out.println(na);
                    
                    ResultSet rs6 = st.executeQuery("select * from enrollment where ecname='"+na+"'");
                    
                    while(rs6.next())
                    {
                        out.println("<tr>");
                        out.println("<td class='tdrow'>"+rs6.getInt(1));
                        out.println("<td class='tdrow'>"+rs6.getString(2));
                        out.println("<td class='tdrow'>"+rs6.getString(3));
                        out.println("<td class='tdrow'>"+rs6.getString(4));
                        out.println("<td class='tdrow'>"+rs6.getString(5));
                        out.println("<td class='tdrow'>"+rs6.getString(6));
                        out.println("<td class='tdrow'>"+rs6.getInt(7));
                        out.println("<td class='tdrow'>"+rs6.getInt(8));
                    }
                }
                
                catch(Exception e)
                {
                    out.println(e);
                }
            %>
              
        </table>
        
            <div align="center"><a href="clientdashboard.jsp" class="btn btn-dark">Dashboard</a></div>
    </body>
</html>
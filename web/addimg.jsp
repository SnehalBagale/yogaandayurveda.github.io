<%-- 
    Document   : addimg
    Created on : 3 Mar, 2023, 12:03:02 PM
    Author     : Vaibhav Kumbharikar
--%>

<%@page contentType="text/html" pageEncoding="UTF-8" import="java.sql.*"%>
<!DOCTYPE html>
<!--
To change this license header, choose License Headers in Project Properties.
To change this template file, choose Tools | Templates
and open the template in the editor.
-->
<html>
    <head>
        <title>Yoga | Add Remedy</title>
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
    /*background-color: #cdcdcd;*/
     background-image: url(Remedy2.jpg); 
    background-repeat: no-repeat;
    background-size: cover;
}
        h1{
            font-family: josefin sans;
            font-size: 4em;
            text-align: center;
            margin: 0.9em auto;
            color: #373737;
}

#sec{
    margin: auto 10%;
}
p{
    color: #373737;
    font-weight: 500;
    font-family: Ubuntu;
    font-size: 2em;
}

::placeholder{
    font-family: Montserrat;
}

img{
    width:100%;
}

.btn{
    font-family: Montserrat;
    font-size: 1.2em;
    font-weight: 500;
}
    </style>
    
    </head>
    <body>
        <!--<div>Add Shibir</div>-->
        
        <h1>Add Remedy</h1>
  <form class="form-horizontal" action="addimg.jsp" method="post">
<!--
Enter Disease : <input type="text" class="" placeholder="Enter Disease Name" name="t1">
Enter Remedy : <textarea class="" placeholder="Enter Remedy" name="t2"></textarea>
Enter Remedy Link : <textarea class="" placeholder="Enter Remedy Link" name="t3"></textarea><br><br>-->

<section id='sec'>
      <div class="row">
		<div class="col-lg-4">
                   
                        <input type="number" class="form-control" placeholder="Enter id" name="t1">
                        
                        <input type="text" class="form-control" placeholder="Enter img name" name="t2">
                        
                        <input type="file" class="form-control" name="t3">
                        <input type="submit" value="Submit" class="btn btn-light">
			&nbsp;&nbsp;&nbsp;
		</div>
                </div>		
	</div>
      </section>
              
  </form>

    </body>
</html>



<%
    try
    {
        String id = "'" + request.getParameter("t1")+"'";
        String name = "'" + request.getParameter("t2")+"'";
        String img = "'" + request.getParameter("t3")+"'";
        
        Class.forName("com.mysql.jdbc.Driver");
        Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3308/ya","root","");
        Statement st = con.createStatement();
        String q = "insert into images(iid, name, image) values("+id+","+name+","+img+")";
//        out.print(q);
        
        st.executeUpdate(q);
        
        st.close();
        con.close();
        response.sendRedirect("admindashboard.jsp");
    }
    catch( Exception e)
    {
        out.println(e);
    }
%>


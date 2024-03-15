<%-- 
    Document   : clientvideo
    Created on : 23 Jan, 2023, 6:15:57 PM
    Author     : Vaibhav Kumbharikar
--%>

<%@page contentType="text/html" pageEncoding="UTF-8" import="java.sql.*"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Yoga | Videos</title>
           
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
    background-image: url(clientrem.jpg); 
    background-repeat: no-repeat;
    background-size: 100%;
}
        h1{
            font-family: josefin sans;
            font-size: 4em;
            text-align: center;
            margin: 0.9em auto;
            color: #0d6efd;
}

.table{
    width: 50%;
    margin: 20px;
}

.tbhead{
    font-family: Montserrat,titillium web;
    font-weight: 500;
    font-size: 1.6em;
    margin: 0 1em;
    padding: 1em 0;
    border-bottom: 2px solid grey;
}

.tdrow{
    font-family: ubuntu, comfortaa;
    font-weight: 400;
    font-size: 1.4em;
    border-bottom: 2px solid grey;
}

a{
    color: blueviolet;
    text-decoration: none;
}

.btn{
    font-size: 1.1em;
}
a:hover{
    color: #0d6efd;
    text-decoration: underline;
}
    </style>
    
    </head>
    <body>
        <h1>Home Remedy</h1>
        <table class="table table-stripped">
            <tr class="text-primary">
                <th class="tbhead">Remedy ID</th>
                <th class="tbhead">Disease Name</th>
                <th class="tbhead">Remedy Description</th>
                <th class="tbhead">Remedy Link</th>
            </tr>
            
            <%
                try
                {
                    Class.forName("com.mysql.jdbc.Driver");
                    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3308/ya","root","");
                    Statement st = con.createStatement();
                    ResultSet rs = st.executeQuery("select * from yogaremedy");
                    
                    while(rs.next())
                    {
                        out.println("<tr>");
                        out.println("<td class='tdrow'>"+rs.getInt(1));
                        out.println("<td class='tdrow'>"+rs.getString(2));
                        out.println("<td class='tdrow'>"+rs.getString(3));
                        String link = rs.getString(4);
                        out.println("<td class='tdrow'><a href="+link+" target='_blank'>Link</a>");
                    }
                }
                
                catch(Exception e)
                {
                    out.println(e);
                }
            %>
              
        </table>
            <br><br>
        
        <div class="row">       
                      <div align="center">
                          <a href="clientdashboard.jsp" class="btn btn-dark">Dashboard</a>
                  </div>  
	</div>
    </body>
</html>
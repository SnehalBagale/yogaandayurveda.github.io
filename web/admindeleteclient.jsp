<%-- 
    Document   : clientlist
    Created on : 23 Jan, 2023, 1:03:31 PM
    Author     : Vaibhav Kumbharikar
--%>

<%@page contentType="text/html" pageEncoding="UTF-8" import="java.sql.*"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Yoga | Client Details</title>
           
    <!-- FONTS -->
    <link rel="preconnect" href="https://fonts.googleapis.com"><link rel="preconnect" href="https://fonts.gstatic.com" crossorigin><link href="https://fonts.googleapis.com/css2?family=Montserrat:wght@100;400;900&display=swap" rel="stylesheet">
    <link rel="preconnect" href="https://fonts.googleapis.com"><link rel="preconnect" href="https://fonts.gstatic.com" crossorigin><link href="https://fonts.googleapis.com/css2?family=Josefin+Sans:wght@200;300;400;500&family=Titillium+Web:wght@200;400;700&display=swap" rel="stylesheet">
    <link rel="preconnect" href="https://fonts.googleapis.com"><link rel="preconnect" href="https://fonts.gstatic.com" crossorigin><link href="https://fonts.googleapis.com/css2?family=Comfortaa:wght@300;400;600&display=swap" rel="stylesheet">
    <link rel="preconnect" href="https://fonts.googleapis.com"><link rel="preconnect" href="https://fonts.gstatic.com" crossorigin><link href="https://fonts.googleapis.com/css2?family=Saira:wght@200;300;400;500&display=swap" rel="stylesheet">
    <link rel="preconnect" href="https://fonts.googleapis.com"><link rel="preconnect" href="https://fonts.gstatic.com" crossorigin><link href="https://fonts.googleapis.com/css2?family=Abel&display=swap" rel="stylesheet">
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
     background-image: url(clientdet.jpg); 
    /*background-repeat: no-repeat;*/
    background-size: cover;
    width: 100%;
}
        h1{
            font-family: josefin sans;
            font-size: 4em;
            text-align: center;
            margin: 0.9em auto;
            color: #373737;
}

.table{
    margin: auto;
    width: 90%;
    /*border: 1px solid #000;*/
}

.tbhead{
    font-family: Montserrat,titillium web;
    font-weight: 500;
    font-size: 2em;
    margin: 0 1em;
    padding: 1em 0;
    color: #373737;
    /*border: 1px solid #000;*/
}

.tdrow{
    font-family: ubuntu, comfortaa;
    font-weight: 300;
    font-size: 1.5em;
    /*border: 1px solid #000;*/
}

a{
    color: red;
    text-decoration: none;
    font-weight: 400;
}

a:hover{
    color: red;
    text-decoration: underline;
}

    </style>
  
    </head>
    <body>
        <h1>Client Details</h1>
                    
        <table class="table table-stripped">
            <tr class="text-primary">
                <th class="tbhead">Client ID</th>
                <th class="tbhead">Client Name</th>
                <th class="tbhead">Email</th>
                <th class="tbhead">Mobile No</th>
                <th class="tbhead">Address</th>
                <th class="tbhead">Delete</th>
            </tr>
            
            <%
                try
                {
                    Class.forName("com.mysql.jdbc.Driver");
                    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3308/ya","root","");
                    Statement st = con.createStatement();
                    ResultSet rs = st.executeQuery("select client_id, full_name, email, mno, currenta from client");
                    
                    while(rs.next())
                    {
                        out.println("<tr>");
                        int p = rs.getInt(1);
                        out.println("<td class='tdrow'>"+p);
                        out.println("<td class='tdrow'>"+rs.getString(2));
                        out.println("<td class='tdrow'>"+rs.getString(3));
                        out.println("<td class='tdrow'>"+rs.getString(4));
                        out.println("<td class='tdrow'>"+rs.getString(5));

                        out.println("<td class='tdrow'><a href=admindeleteclientdata.jsp?id="+p+">Delete</a>");
//                                                    <a href=enrollshibir.jsp?id="+p+">Enroll</a>");
                    }
                }
                
                catch(Exception e)
                {
                    out.println(e);
                }
            %>
              
        </table><br><br>
            <div align="center">
			<a href="admindashboard.jsp" class="btn btn-dark">Dashboard</a>
            </div>
    </body>
</html>

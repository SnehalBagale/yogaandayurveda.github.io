<%-- 
    Document   : shibhirbookingrep
    Created on : 16 Jun, 2022, 9:14:19 AM
    Author     : Rajashri
--%>

<%@page contentType="text/html" pageEncoding="UTF-8" import="java.sql.*"%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        
  <meta name="viewport" content="width=device-width, initial-scale=1">
  
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
    /*background-color: #cdcdcd;*/
     background-image: url(daterep.jpg); 
    /*background-repeat: no-repeat;*/
    background-size: cover;
}
        h1{
            font-family: josefin sans;
            font-size: 4em;
            text-align: center;
            margin: 0.9em auto;
            color: #373737;
}


h5{
    font-size: 2em;
}
.tbhead{
    font-family: Montserrat,titillium web;
    font-weight: 500;
    font-size: 1.5em;
    margin: 0 1em;
    padding: 1em 0;
    color: #373737;
}

.tdrow, a{
    font-family: ubuntu, comfortaa;
    font-weight: 400;
    font-size: 1.2em;
}

a{
    color: red;
    text-decoration: none;
}

.btn{
    font-size: 1.2em;
}
a:hover{
    color: red;
    /*text-decoration: underline;*/
}

    </style>
  
    </head>
    <body> <h1>Date-wise Shibir Report</h1>
        <form action="datewisereport.jsp">
            
            <div class="row">
                <div class="col-lg-2"></div>
                <div class="col-lg-4">
                    <h5>From Date</h5>
                </div>
                
                <div class="col-lg-4">
                     <h5>To Date</h5>
                </div>
                <div class="col-lg-2"></div>
            </div>
            
            <div class="row">
                <div class="col-lg-2"></div>
                <div class="col-lg-3">
                    <%
                        Class.forName("com.mysql.jdbc.Driver");
                        Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3308/ya","root","");
                        Statement st=con.createStatement();
                        ResultSet rs=st.executeQuery("select distinct(edate1) from enrollment");
                        out.println("<select name=d1 class=form-control>");
                        while(rs.next())
                        {
                            out.println("<option >"+rs.getString(1)+"</option>");
                        }
                        out.println("</select>");
        
                    %>
                    </div>
       
                    <div class="col-lg-1"></div>
            
                <div class="col-lg-3">
                    <%
                        Class.forName("com.mysql.jdbc.Driver");
                        Connection con1=DriverManager.getConnection("jdbc:mysql://localhost:3308/ya","root","");
                        Statement st1=con1.createStatement();
                        ResultSet rs1=st1.executeQuery("select distinct(edate2) from enrollment");
                        out.println("<select name=d2 class=form-control>");
                        while(rs1.next())
                        {
                            out.println("<option >"+rs1.getString(1)+"</option>");
                        }
                        out.println("</select>");
        
                    %>
                    </div>
            <!--</div>-->
            </div><br><br>
                    <div align="center">
			<input type="submit" value="submit" class="btn btn-dark">
		</div><br><br>
        </form>
        <table class="table table-striped">
            <tr><th class="tbhead">Enroll ID
                <th class="tbhead">Client ID
                <th class="tbhead">Shibir Name
                <th class="tbhead">City
                <th class="tbhead">Address
                <th class="tbhead">Start Date
                <th class="tbhead">End Date
                <th class="tbhead">Fees
                <th class="tbhead">Client Name
                <th class="tbhead">Mobile No
                <th class="tbhead">Mode of Payment
                <th class="tbhead" >Transaction Id
                <th class="tbhead">Applied Date
            </tr>
  <%
  try
    {
        
        Connection con2=DriverManager.getConnection("jdbc:mysql://localhost:3308/ya","root","");
        Statement st2=con2.createStatement();
        String d="'"+request.getParameter("d1")+"'";
        String dd="'"+request.getParameter("d2")+"'";
        
        String q="select * from enrollment where edate1="+d+" and edate2="+dd+"";
        //out.println(q);
        ResultSet rs2=st2.executeQuery(q);
        int amt=0;
        while(rs2.next())
        {
          out.println("<tr>");
          out.println("<td class='tdrow'>"+rs2.getInt(1));
          out.println("<td class='tdrow'>"+rs2.getInt(2));
          out.println("<td class='tdrow'>"+rs2.getString(3));
          out.println("<td class='tdrow'>"+rs2.getString(4));
          out.println("<td class='tdrow'>"+rs2.getString(5));
          out.println("<td class='tdrow'>"+rs2.getString(6));
          out.println("<td class='tdrow'>"+rs2.getString(7));
          out.println("<td class='tdrow'>"+rs2.getInt(8));
          out.println("<td class='tdrow'>"+rs2.getString(9));
          out.println("<td class='tdrow'>"+rs2.getString(10));
          out.println("<td class='tdrow'>"+rs2.getString(11));
          out.println("<td class='tdrow'>"+rs2.getString(12));
          out.println("<td class='tdrow'>"+rs2.getString(13));
          int p=rs2.getInt(8);
          amt=amt+p;
          
          
          
        }
        rs2.close();
        st2.close();
        con2.close();
        out.print("</table><br><br><h6>TotalCollection&nbsp;Rs/-: "+amt+"</h6>");
        
    }catch(Exception e){
        out.println(e);
    } 
  %>
        </table>
                    <div align="center">
			<a href="admindashboard.jsp" class="btn btn-dark">Dashboard</a>
		</div>
    </body>
</html>

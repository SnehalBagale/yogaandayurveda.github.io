<%-- 
    Document   : feedback
    Created on : 1 Feb, 2023, 2:31:36 PM
    Author     : Vaibhav Kumbharikar
--%>

<%@page contentType="text/html" pageEncoding="UTF-8" import="java.sql.*"%>
<%! ResultSet rs=null;
    ResultSet rs2=null;
    ResultSet rs3=null;
%>
<!DOCTYPE html>
<html>
    <head>
        <title>Yoga | Apply Consultancy</title>
                
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
    <link rel="preconnect" href="https://fonts.googleapis.com">
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
    background-image: url(consult.jpg);
    background-repeat: no-repeat;
    background-size: cover;
}
        h1{
            font-family: josefin sans;
            font-size: 4em;
            text-align: center;
            margin: 0.9em auto 0;
}

h2{
    font-family: Montserrat,titillium web;
    font-size: 2em;
    font-weight: 400;
    margin: 0 1em;
    padding: 1em 0;
    text-align: center;
}

.table{
    width: 70%;
    margin: 20px auto;
    border: 2px solid grey;
}

.tbhead{
    font-family: Montserrat,titillium web;
    font-weight: 500;
    font-size: 1.8em;
    margin: 0 1em;
    padding: 1em 0;
    /*border-top: 2px solid grey;*/
    border-bottom: 2px solid grey;
}

.tdrow{
    font-family: ubuntu, comfortaa;
    font-weight: 400;
    font-size: 1.3em;
    border-bottom: 2px solid grey;
}

span{
    font-size: 1.4em;
    margin-bottom: 15px;
}

input[readonly].i1{
    background-color: #fff;
    font-size: 1.2em;
}

.col-lg-1{
    padding: 0;
}

img{
    width: 80%;
    margin-top: 10%;
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
    String clientname = "'"+(String)session.getAttribute("cname")+"'";
    
try
{
                    Class.forName("com.mysql.jdbc.Driver");
                    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3308/ya","root","");
                    Statement st = con.createStatement();
                    rs = st.executeQuery("select client_id, full_name from client where email="+clientname+"");
                    rs.next();
                }
                
                catch(Exception e)
                {
                    out.println(e);
                }
%>

<%
try
{
                    Class.forName("com.mysql.jdbc.Driver");
                    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3308/ya","root","");
                    Statement st = con.createStatement();
                    rs2 = st.executeQuery("select fullname from doctor");
                    rs2.next();
                }
                
                catch(Exception e)
                {
                    out.println(e);
                }
%>
    
    
    <body>
        <!--<div>Add Shibir</div>-->
        
        <h1 class="txthead text-primary"align="center">Apply For Consultancy</h1><br><br>
        <!--<h2>“Good health and good sense are two of life’s greatest blessings.”</h2>-->
  <form class="form-horizontal" action="consultdata.jsp" method="post">
    <div class="row">

      	<div class="col-lg-1">
      		
      	</div>
        
        <div class="col-lg-1">
      		<span>Client ID :</span> <input type="text" class="form-control i1" name="t0" value="<%=rs.getInt(1)%>" readonly>
      	</div>
        <div class="col-lg-3">
            <span>Client Name :</span> <input type="text" class="form-control i1" name="t1" value="<%=rs.getString(2)%>" readonly>
      	</div>
        <div class="col-lg-2">
            <span>Symptom :</span> <input type="text" class="form-control" name="t2" placeholder="Enter Symptom">
      	</div>
        <div class="col-lg-2">
            <span>Apply Date :</span> <input type="text" class="form-control i1" name="t3" readonly value="<%
                      java.util.Date d=new java.util.Date();
                      int dd=d.getDate();
                      
                      int mm=d.getMonth()+1;
                      int yy=d.getYear()-100;
                      String yyyy="20"+yy;
                      String dated=yyyy+"-"+mm+"-"+dd;
                      out.println(dated);
                      %>">
      	</div>
        <div class="col-lg-2"><span>Fees :</span> <input type="number" class="form-control i1" value="200" readonly name="t4"></div>
    </div>
        <br>
        <div class="row">
            <div class="col-lg-1"></div>
            
            <div class="col-lg-2 col2"><span>Payment Method :</span> <select name="t5" class="form-control" value="Select Payment Mode">
    <option value="GPay">
	GPay
    </option>
    <option value="PhonePay">
	PhonePay
    </option>
    <option value="Paytm">
	Paytm
    </option>
</select></div>
            <div class="col-lg-2"><span>Transaction ID:</span> <input type="text" class="form-control" placeholder="Enter TID" name="t6"></div>
            <div class="col-lg-2"><span>Doctor Name :</span> <select name="t7" class="form-control">
<%
    while(rs2.next())
    {
        out.println("<option>"+rs2.getString(1)+"</option>");
    }
%>
</select></div>
            <div class="col-lg-2"></div>
            <div class="col-lg-2"></div>
            <div class="col-lg-2"></div>
            <div class="col-lg-2"></div>
            
        </div>
        
       

<br><br>




<!--<br><br><br>
<input type="submit" value="submit" class="btn btn-primary">
			&nbsp;&nbsp;&nbsp;
                        <a href="clientdashboard.jsp" class="btn btn-danger">Dashboard</a><br><br>-->
                        
                        <div class="row">       
                      <div align="center"><input type="submit" value="submit" class="btn btn-light">
			&nbsp;&nbsp;&nbsp;
			<a href="clientdashboard.jsp" class="btn btn-dark">Dashboard</a>
                  </div>  
	</div>
<br>
                        
  </form>


        <table class="table table-stripped">
            <tr class="text-primary">
                <!--<th>Consult ID</th>-->
                <th class="tbhead">Symptom</th>
                <th class="tbhead">Applied Date</th>
                <th class="tbhead">Doctor Name</th>
                <th class="tbhead">Prescription</th>
                <th class="tbhead">Consulted Date</th>
<!--                <th>Fees</th>
                <th>Limit</th>
                <th>Enroll</th>-->
            </tr>
            
<%
                
    String clientid = "'"+(String)session.getAttribute("cname")+"'";
                try
                {
                    Class.forName("com.mysql.jdbc.Driver");
                    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3308/ya","root","");
                    Statement st = con.createStatement();
                    
                    rs3 = st.executeQuery("select client_id from client where email="+clientid+"");
                    rs3.next();
                    int em = rs3.getInt(1);
                    String q="select consultation.symptom, consultation.adate, consultation.dname, prescription.pre, prescription.cdate from consultation, prescription WHERE consultation.cid=prescription.cid and consultation.ccid="+em+"";
                    ResultSet rs4 = st.executeQuery(q);
                    
                    while(rs4.next())
                    {
                        out.println("<tr>");
//                        int p = rs.getInt(1);
//                        out.println("<td>"+rs.getInt(1));
                        out.println("<td class='tdrow'>"+rs4.getString(1));
                        out.println("<td class='tdrow'>"+rs4.getString(2));
                        out.println("<td class='tdrow'>"+rs4.getString(3));
                        out.println("<td class='tdrow'>"+rs4.getString(4));
                        out.println("<td class='tdrow'>"+rs4.getString(5));
//                        out.println("<td>"+rs.getInt(7));
//                        out.println("<td>"+rs.getInt(8));
////                        out.println("<td><a href=enrollshibir.jsp?id="+p+">Enroll</a>");
                    }
                }
                
                catch(Exception e)
                {
                    out.println(e);
                }
            %>
              
        </table>
    </body>
</html>

<%-- 
    Document   : enrollshibir
    Created on : 29 Jan, 2023, 9:49:48 AM
    Author     : Vaibhav Kumbharikar
--%>

<%@page  errorPage="error.jsp" contentType="text/html" pageEncoding="UTF-8" import="java.sql.*"%>
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
    background-repeat: no-repeat;
    background-size: cover;
    font-size: 1em;
    background-image: url(enroll2.jpg);
}
        h1{
            font-family: josefin sans;
            font-size: 4em;
            text-align: center;
            margin: 0.9em auto 0;
}

h2{
    font-family: titillium web;
    font-size: 2.5em; 
    font-weight: 400;
    margin: 1em auto;
    text-align: center;
}

span{
    font-size: 1.3em;
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

/*.btn:hover{
    transform: scale(105%);
    transition: 0.3s;
}*/
    </style>
  
    </head>
<%
    int id = Integer.parseInt(request.getParameter("id"));
try
{
                    Class.forName("com.mysql.jdbc.Driver");
                    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3308/ya","root","");
                    Statement st = con.createStatement();
                    rs = st.executeQuery("select * from yogashibir where sid="+id+"");
                    rs.next();
                }
                
                catch(Exception e)
                {
                    out.println(e);
                }
%>

<%
    String clientname = "'"+(String)session.getAttribute("cname")+"'";
    
try
{
                    Class.forName("com.mysql.jdbc.Driver");
                    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3308/ya","root","");
                    Statement st = con.createStatement();
                    rs2 = st.executeQuery("select full_name, mno  from client where email="+clientname+"");
                    rs2.next();
                }
                
                catch(Exception e)
                {
                    out.println(e);
                }
%>

    <body>

        
        <h1 class="txthead text-primary" align="center">Enroll For Shibir</h1><br><br>
        <section id='sec'>
  <form class="form-horizontal" action="enrollment.jsp" method="post">
      

      <div class="row">
          <div class="col-lg-1"></div>
		<div class="col-lg-2">
                    <span>Shibir Id : </span><input type="text" class="form-control i1"  name="t1" value="<%=rs.getInt(1)%>" readonly>
		</div>
                <div class="col-lg-2">
                    <span>Shibir Name : </span><input type="text" class="form-control i1" name="t2" value="<%=rs.getString(2)%>" readonly>
                </div>
                <div class="col-lg-2">
                    <span>City : </span><input type="text" class="form-control i1" name="t3" value="<%=rs.getString(3)%>" readonly>
                </div>
                <div class="col-lg-4">
                    <span>Address : </span><input type="text" class="form-control i1" name="t4" value="<%=rs.getString(4)%>" readonly>
                </div>
                <div class="col-lg-1"></div>
      </div>
                <br><br>
          <div class="row">      
                <div class="col-lg-1"></div>
                <div class="col-lg-2">
                    <span>Start Date : </span><input type="text" class="form-control i1" name="t5" value="<%=rs.getString(5)%>" readonly>
                </div>
                <div class="col-lg-2">
                    <span>End Date : </span><input type="text" class="form-control i1" name="t6" value="<%=rs.getString(6)%>" readonly>
                </div>
                <div class="col-lg-2">
                    <span>Fees : </span><input type="text" class="form-control i1" name="t7" value="<%=rs.getInt(7)%>" readonly>
                </div>
                <div class="col-lg-4">
                    <span>Client Name : </span><input type="text" class="form-control i1" name="t8" value="<%=rs2.getString(1)%>" readonly>
                </div>
                <div class="col-lg-1"></div>
                
              </div>
                <br><br>
                
          <div class="row">  
                <div class="col-lg-1"></div>
                <div class="col-lg-2">
                    <span>Mobile No :</span><input type="text" class="form-control i1" name="t9" value="<%=rs2.getString(2)%>" readonly>
                </div>
                <div class="col-lg-2">
                    <span>Applied Date : </span><input type="text" class="form-control i1" name="t12" value="<%
                      java.util.Date d=new java.util.Date();
                      int dd=d.getDate();
                      
                      int mm=d.getMonth()+1;
                      int yy=d.getYear()-100;
                      String yyyy="20"+yy;
                      String dated=yyyy+"-"+mm+"-"+dd;
                      out.println(dated);
                      %>" readonly>
                    
                </div>
                
               
                <div class="col-lg-2">
                    <span>Payment Method : </span>
                    <select name="t10" class="form-control" >
    <option value="GPay">
	GPay
    </option>
    <option value="PhonePay">
	PhonePay
    </option>
    <option value="Paytm">
	Paytm
    </option>
</select>
                </div>
                 <div class="col-lg-2">
                    <span>Transaction Id : </span><input type="text" class="form-control" name="t11" placeholder="Enter Transaction Id">
                </div>
                <div class="col-lg-2">
                    <img src="qrimg.jpg">
                </div>
                
      </div>
                      
               <div class="row">       
                      <div align="center"><input type="submit" value="submit" class="btn btn-light">
			&nbsp;&nbsp;&nbsp;
			<a href="clientdashboard.jsp" class="btn btn-dark">Dashboard</a>
                  </div>  
	</div>
      </section>

<!--

Payment Method : <select name="t10" class="form-control" value="Select payment Type">
    <option value="GPay">
	GPay
    </option>
    <option value="PhonePay">
	PhonePay
    </option>
    <option value="Paytm">
	Paytm
    </option>
</select>
<br><br>
Transaction Id : <input type="text" class="form-control" name="t11" placeholder="Enter Transaction Id">-->


<br><br>
    
  </form>

    </body>
</html>
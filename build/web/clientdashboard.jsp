<%-- 
    Document   : clientdashboard
    Created on : 11 Dec, 2022, 10:39:33 AM
    Author     : Vaibhav Kumbharikar
--%>

<%@page contentType="text/html" pageEncoding="UTF-8" import="java.sql.*"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Yoga | Client Dashboard</title>
        
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



#details {
    /* background: url("/bg1.jpg"); */
    background-size: 1700px 1200px;
    background-repeat: no-repeat;
    padding-bottom: 4em;
  }

#reports {
    /* background-color: #EFF5F5; */
    /* background: url("/bg3.jpg"); */
    background-size: 1700px 2000px;
    background-repeat: no-repeat;
    padding-bottom: 4em;
}

#feedbacks {
    /* background: url("/bg2.jpg"); */
    background-size: 1700px 1200px;
    background-repeat: no-repeat;
    padding-bottom: 4em;
  }

.row{
   align-items:center;
}

.d-flex{
    justify-content: center;
    text-align:left;
}

.box:hover{
    box-shadow:  0 1px 15px 3px rgba(0, 0, 0, 0.329);
    transition: 0.3s ease;
    transform: scale(105%);
}

.box, .card-img-top{
    border-radius: 25px;
    padding: 5%;
    background-color: #fff;
    margin: 5% auto;
    -webkit-transition: all 0.3s ease;
    -moz-transition: all 0.3s ease;
    -o-transition: all 0.3s ease;
    -ms-transition: all 0.3s ease;
    transition: all 0.3s ease;
}
.card-img-top{
    margin: 1% auto;
}
.ico{
    width:5%;
}

.card{

    border: 0px;
}

h1{
    font-family: josefin sans;
    font-size: 3.5em;
    text-align: center;
    margin: 0.9em auto 0.1em;
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

h5{
    font-family: Poppins,Raleway,Roboto,Rubik,Tangerine,Ubuntu;
    font-weight: 500;
    font-size: 1.6em;   
    padding: 2%;
    border-radius: 10px;
}

p{
    font-family: Ubuntu;;
    font-weight: 400;
    font-size: 0.9em;
}

.bigbtn{
    width: 100%;
    background-color: #00e1ff;
    border: none;
    transition: 0.3s;
    font-family: Rubik,Tangerine,Ubuntu;
    /*font-weight: 600;*/
    font-size: 1.5em;
    color: #000;
}

.bigbtn:hover{
    transition: 0.3s ease;
    background-color: #009EFF; 
    /* transform: scaleY(105%); */
}

.bigbtn2 {
            position: absolute;
            right: 0;
            top: 0;
            margin: 20px 20px 0 0;
            background-color: #00e1ff;
            border: none;
            transition: 0.3s;
            font-family: Rubik, Tangerine, Ubuntu;
            padding: 20px;
            font-size: 1.5em;
            color: #000;
            border-radius: 25px;
        }

        .bigbtn2:hover, .b3:hover {
            transition: 0.3s ease;
            background-color: #009EFF; 
        }

        .b3{
            margin: 20px 20px 0 0;
            background-color: #00e1ff;
            border: none;
            transition: 0.3s;
            font-family: Rubik, Tangerine, Ubuntu;
            padding: 20px;
            font-size: 1.4em;
            color: #000;
            border-radius: 25px;
            text-align: center;
        }
        
.sbtn{
    width: 10%;
}

.card-img-top:hover{
    transform: scale(105%);
    transition: 0.3s;
}

#topbtn {
    /*display: none; Hidden by default */
    position: fixed; /* Fixed/sticky position */
    bottom: 20px; /* Place the button at the bottom of the page */
    right: 30px; /* Place the button 30px from the right */
    z-index: 99; /* Make sure it does not overlap */
    border: none; /* Remove borders */
    outline: none; /* Remove outline */
    background-color: #fff; /* Set a background color */
    color: #000; /* Text color */
    cursor: pointer; /* Add a mouse pointer on hover */
    padding: 15px; /* Some padding */
    border-radius: 10px; /* Rounded corners */
    font-size: 18px; /* Increase font size */


    /*     
        FOR EASE IN AND EASE OUT ON HOVER LEAVE
    */

    -webkit-transition: all 0.3s ease;
    -moz-transition: all 0.3s ease;
    -o-transition: all 0.3s ease;
    -ms-transition: all 0.3s ease;
    transition: all 0.3s ease;
  }
  
  #topbtn:hover {
    background-color: #000; /* Add a dark-grey background on hover */
    color: #fff;
  }
        </style>
    </head>
    <body>
        <!--<h1>Hello World!</h1>-->
        <p style="font-family: batmanforeveralterate">
        <%
            
            String p="'"+(String)session.getAttribute("cname")+"'";
            
                try
                {
                    Class.forName("com.mysql.jdbc.Driver");
                    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3308/ya","root","");
                    Statement st = con.createStatement();
//                    out.println(p);          
                    ResultSet rs = st.executeQuery("select full_name from client where email="+p+"");
//                    rs.next();
                    while(rs.next())
                    {
                        String pp = rs.getString(1);
                        out.println("<h1>Hello..!   &nbsp;"+pp+"</h1>");
                    }
                }
                
                catch(Exception e)
                {
                    out.println(e);
                }
   
            
            
            
        %>
        </p>
        
        <section id="details">
      <div class="container">
      
    <div class="container-f">

          <div class="row">
              <h2>"Yoga is a skill in action" - The Bhagavad Gita</h2> 
            <div class="col-lg-4 d-flex">
              <div class="box">
                <div class="card" style="width: 20rem;">
                <img src="shibir.jpg" class="card-img-top" alt="...">
                <div class="card-body">
                  <h5 class="card-title">Yoga Shibir</h5>
                  <p class="card-text">Lorem ipsum dolor sit amet consectetur adipisicing elit. Cumque, in.</p>
                  <a href="clientenrollshibir.jsp" class="bigbtn btn btn-primary">Enroll Shibir</a><br><br>
                </div>
                </div>
              </div>
            </div>

            <div class="col-lg-4 d-flex">
              <div class="box">
              <div class="card" style="width: 20rem;">
                <img src="doctorfeedback.jpg" class="card-img-top" alt="...">
                <div class="card-body">
                  <h5 class="card-title">Doctor's Consultancy</h5>
                  <p class="card-text">Lorem ipsum dolor sit amet consectetur adipisicing elit. Cumque, in.</p>
                <a href="consult.jsp" class="bigbtn btn btn-primary">Apply Consultancy</a><br><br>
                </div>
              </div>
              </div>
            </div>


            
            <div class="col-lg-4 d-flex">
              <div class="box">
              <div class="card" style="width: 20rem;">
                <img src="yogahor.jpg" class="card-img-top" alt="...">
                <div class="card-body">
                  <h5 class="card-title">Yoga Video</h5>
                  <p class="card-text">Lorem ipsum dolor sit amet consectetur adipisicing elit. Cumque, in.</p>
                  <a href="clientvideo.jsp" class="bigbtn btn btn-primary">View Video</a><br><br>
                </div>
              </div>
              </div>
            </div>
            
          

          <div class="col-lg-4 d-flex">
            <div class="box">
            <div class="card" style="width: 20rem;">
              <img src="remedy.jpg" class="card-img-top" alt="...">
              <div class="card-body">
                <h5 class="card-title">Home Remedy</h5>
                <p class="card-text">Lorem ipsum dolor sit amet consectetur adipisicing elit. Cumque, in.</p>
               <a href="clientremedy.jsp" class="bigbtn btn btn-primary">View Remedy</a><br><br>
              </div>
            </div>
            </div>
          </div>

          
      <!-- <div class="row"> -->
        <div class="col-lg-4 d-flex">
          <div class="box">
            <div class="card" style="width: 20rem;">
            <img src="doctor.jpg" class="card-img-top" alt="...">
            <div class="card-body">
              <h5 class="card-title">Know Our Doctors</h5>
              <p class="card-text">Lorem ipsum dolor sit amet consectetur adipisicing elit. Cumque, in.</p>
              <a href="doctordetails.jsp" class="bigbtn btn btn-primary">View Dr Details</a><br><br>
            </div>
            </div>
          </div>
        </div>
      
      <div class="col-lg-4 d-flex">
          <div class="box">
            <div class="card" style="width: 20rem;">
            <img src="clientfeedback.jpg" class="card-img-top" alt="...">
            <div class="card-body">
               <h5 class="card-title">Customer Feedback</h5>
              <p class="card-text">Lorem ipsum dolor sit amet consectetur adipisicing elit. Cumque, in.</p>
              <a href="feedback.jsp" class="bigbtn btn btn-primary">Give Feedback</a><br><br>
            </div>
            </div>
          </div>
        </div>

      </div>
  </div>
</section>
        
        <a href="clogout.jsp" class="bigbtn2 b3 btn btn-primary">Logout</a>
    </body>
</html>

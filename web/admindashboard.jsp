<%-- 
    Document   : admindashboard
    Created on : 25 Dec, 2022, 10:00:06 AM
    Author     : Vaibhav Kumbharikar
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Yoga | Admin Dashboard</title>

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
    background-color: #cdcdcd;
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

.ico{
    width:5%;
}

.card{

    border: 0px;
}

h1{
    font-family: josefin sans;
    font-size: 4em;
    text-align: center;
    margin: 0.9em auto 0.1em;
}

 h2{
        font-family: Montserrat,titillium web;
        font-size: 3em;
        font-weight: 400;
        margin: 0 1em;
        padding: 1em 0;
        text-align: center;
    }

h5{
        font-family: Poppins,Raleway,Roboto,Rubik,Tangerine,Ubuntu;
        font-weight: 500;
        font-size: 1.4em;
        padding: 2%;
        border-radius: 10px;
    }

p{
        font-family: Ubuntu;
        font-weight: 400;
        font-size: 0.9em;
    }

.bigbtn{
    width: 100%;
    background-color: #cdcdcd;
    border: none;
    transition: 0.3s;
    font-family:  Rubik,Tangerine,Ubuntu;
    /*font-weight: 600;*/
    font-size: 1.5em;
    color: #000;
}

.bigbtn:hover{
    transition: 0.3s ease;
    background-color: #000;
    color: #fff;
    /* transform: scaleY(105%); */
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

  <!-- ====================================================================== -->
 <!-- Title -->
 <section id="dashboard">
 <h1>Welcome to Admin Dashboard...</h1>
</section>
 <!-- <div class="b">
  <a href="#" class="sbtn btn btn-primary">Add</a>
  <a href="#" class="sbtn btn btn-primary">Add</a><br><br>
</div> -->

    <section id="details">
      <div class="container">
      
    <div class="container-f">

          <div class="row">
            <h2>Details Update :</h2> 
            <div class="col-lg-4 d-flex">
              <div class="box">
                <div class="card" style="width: 20rem;">
                <img src="yogahor.jpg" class="card-img-top" alt="...">
                <div class="card-body">
                  <h5 class="card-title">Yoga Videos</h5>
                  <p class="card-text">Lorem ipsum dolor sit amet consectetur adipisicing elit. Cumque, in.</p>
                  <a href="addvideo.html" class="bigbtn btn btn-primary">Add Videos</a>
                </div>
                </div>
              </div>
            </div>

            <div class="col-lg-4 d-flex">
              <div class="box">
              <div class="card" style="width: 20rem;">
                <img src="remedy.jpg" class="card-img-top" alt="...">
                <div class="card-body">
                  <h5 class="card-title">Home Remedies</h5>
                  <p class="card-text">Lorem ipsum dolor sit amet consectetur adipisicing elit. Cumque, in.</p>
                  <a href="addremedy.html" class="bigbtn btn btn-primary">Add Remedies</a>
                </div>
              </div>
              </div>
            </div>


            
            <div class="col-lg-4 d-flex">
              <div class="box">
              <div class="card" style="width: 20rem;">
                <img src="approval.jpg" class="card-img-top" alt="...">
                <div class="card-body">
                  <h5 class="card-title">Customer Approval</h5>
                  <p class="card-text">Lorem ipsum dolor sit amet consectetur adipisicing elit. Cumque, in.</p>
                  <a href="clientlist.jsp" class="bigbtn btn btn-primary">Approve / Reject</a>
                </div>
              </div>
              </div>
            </div>
            
          

          <div class="col-lg-4 d-flex">
            <div class="box">
            <div class="card" style="width: 20rem;">
              <img src="customer.jpg" class="card-img-top" alt="...">
              <div class="card-body">
                <h5 class="card-title">Customer Details</h5>
                <p class="card-text">Lorem ipsum dolor sit amet consectetur adipisicing elit. Cumque, in.</p>
                <a href="admindeleteclient.jsp" class="bigbtn btn btn-primary">Delete Client Data</a>
              </div>
            </div>
            </div>
          </div>

          
      <!-- <div class="row"> -->
        <div class="col-lg-4 d-flex">
          <div class="box">
            <div class="card" style="width: 20rem;">
            <img src="shibir.jpg" class="card-img-top" alt="...">
            <div class="card-body">
              <h5 class="card-title">Yoga Shibir Details</h5>
              <p class="card-text">Lorem ipsum dolor sit amet consectetur adipisicing elit. Cumque, in.</p>
              <a href="addshibir.html" class="bigbtn btn btn-primary">Add Shibir</a>
            </div>
            </div>
          </div>
        </div>

        <div class="col-lg-4 d-flex">
          <div class="box">
          <div class="card" style="width: 20rem;">
            <img src="doctor.jpg" class="card-img-top" alt="...">
            <div class="card-body">
              <h5 class="card-title">Doctor Details</h5>
              <p class="card-text">Lorem ipsum dolor sit amet consectetur adipisicing elit. Cumque, in.</p>
              <a href="drreg.jsp" class="bigbtn btn btn-primary">Register Doctor</a>
            </div>
          </div>
          </div>
        </div>

      </div>
  </div>
</section>

<section id="reports">
  <div class="container">
    
  <div class="row">
    <h2>Reports :</h2>
    <div class="col-lg-4 d-flex">
      <div class="box">
      <div class="card" style="width: 20rem;">
        <img src="shibirreport.jpg" class="card-img-top" alt="...">
        <div class="card-body">
          <h5 class="card-title">Yoga Shibir Report</h5>
          <p class="card-text">Lorem ipsum dolor sit amet consectetur adipisicing elit. Cumque, in.</p>
          <a href="shibirreport.jsp" class="bigbtn btn btn-primary">View Shibir Report</a>
        </div>
      </div>
      </div>
    </div>

    <div class="col-lg-4 d-flex">
      <div class="box">
        <div class="card" style="width: 20rem;">
        <img src="shibirdatereport.jpg" class="card-img-top" alt="...">
        <div class="card-body">
          <h5 class="card-title">Date-wise Shibir Report</h5>
          <p class="card-text">Lorem ipsum dolor sit amet consectetur adipisicing elit. Cumque, in.</p>
          <a href="datewisereport.jsp" class="bigbtn btn btn-primary">View Shibir Report</a>
        </div>
        </div>
      </div>
    </div>

    <div class="col-lg-4 d-flex">
      <div class="box">
      <div class="card" style="width: 20rem;">
        <img src="videoreport.jpg" class="card-img-top" alt="...">
        <div class="card-body">
          <h5 class="card-title">Yoga Videos Report</h5>
          <p class="card-text">Lorem ipsum dolor sit amet consectetur adipisicing elit. Cumque, in.</p>
          <a href="adminvideoreport.jsp" class="bigbtn btn btn-primary">View Videos Report</a>
        </div>
      </div>
      </div>
    </div>

    <div class="col-lg-4 d-flex">
      <div class="box">
      <div class="card" style="width: 20rem;">
        <img src="remedyreport.jpg" class="card-img-top" alt="...">
        <div class="card-body">
          <h5 class="card-title">Home Remedies Report</h5>
          <p class="card-text">Lorem ipsum dolor sit amet consectetur adipisicing elit. Cumque, in.</p>
          <a href="adminremedyreport.jsp" class="bigbtn btn btn-primary">View Remedies Report</a>
        </div>
      </div>
      </div>
    </div>
    
    <div class="col-lg-4 d-flex">
      <div class="box">
        <div class="card" style="width: 20rem;">
        <img src="doctorreport.jpg" class="card-img-top" alt="...">
        <div class="card-body">
          <h5 class="card-title">Doctor-wise Report</h5>
          <p class="card-text">Lorem ipsum dolor sit amet consectetur adipisicing elit. Cumque, in.</p>
          <a href="doctorreport.jsp" class="bigbtn btn btn-primary">View Report</a>
        </div>
        </div>
      </div>
    </div>

    <div class="col-lg-4 d-flex">
      <div class="box">
      <div class="card" style="width: 20rem;">
        <img src="symptoms.jpg" class="card-img-top" alt="...">
        <div class="card-body">
          <h5 class="card-title">Symptom-wise Report</h5>
          <p class="card-text">Lorem ipsum dolor sit amet consectetur adipisicing elit. Cumque, in.</p>
          <a href="symptomwisereport.jsp" class="bigbtn btn btn-primary">View Report</a>
        </div>
      </div>
      </div>
    </div>

    
    <div class="col-lg-4 d-flex">
      </div>
    
    
    <div class="col-lg-4 d-flex">
      <div class="box">
      <div class="card" style="width: 20rem;">
        <img src="consultancy.jpg" class="card-img-top" alt="...">
        <div class="card-body">
          <h5 class="card-title">Consultancy Report</h5>
          <p class="card-text">Lorem ipsum dolor sit amet consectetur adipisicing elit. Cumque, in.</p>
          <a href="consultancyreport.jsp" class="bigbtn btn btn-primary">View Consultancy Report</a>
        </div>
      </div>
      </div>
    </div>
    </div>
  </div>
    
    <div class="col-lg-4 d-flex">
      </div>

</section>
 <h2>Feedback :</h2>
<section id="feedbacks">
   
  <div class="container">
 
  <div class="row">
    
    <div class="col-lg-4 d-flex">
      </div>

    <div class="col-lg-4 d-flex">
      <div class="box">
        <div class="card" style="width: 20rem;">
        <img src="clientfeedback.jpg" class="card-img-top" alt="...">
        <div class="card-body">
          <h5 class="card-title">Customer Feedback</h5>
          <p class="card-text">Lorem ipsum dolor sit amet consectetur adipisicing elit. Cumque, in.</p>
          <a href="feedbackreport.jsp" class="bigbtn btn btn-primary">View Client Feedback</a>
        </div>
        </div>
      </div>
    </div>  
      
      
    
    <div class="col-lg-4 d-flex">

    </div> 
    
    </div>
</div>

 
  </div>
    </section>      

    <a href="#dashboard" id="topbtn"><i class="fa-solid fa-arrow-up"></i></a>

</body>
</html>
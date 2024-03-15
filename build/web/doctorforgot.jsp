<%-- 
    Document   : forgetpass
    Created on : Apr 1, 2023, 5:15:01 PM
    Author     : Samarth
--%>
<%@page contentType="text/html" pageEncoding="UTF-8" import="java.sql.*"%>
<html>
    <head>

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
        
    <script>
      	function validate()
  	{
  		
  		var x=document.forms[0].elements[0].value;
  		if(x==null || x=="")
  		{
  			document.getElementById("a").innerHTML="Enter Email";
			return false;
  		}

  		var y=document.forms[0].elements[1].value;
  		if(y==null || y=="")
  		{
  			document.getElementById("b").innerHTML="Enter Aadhaar No";
			return false;
  		}

  		if(y.length<12)
  		{
  			document.getElementById("b").innerHTML="Enter Correct Aadhaar No";
			return false;	
  		}
  		return true;
  	}
  </script>

<style>
	body{
		background-image: url(Dr.jpg);
		background-size: cover;
	}

	h3{
		font-style: bold;
		font-size: 30px;
		color: #15A12F;
	}

	h1{
    font-family: josefin sans;
    font-size: 4em;
    text-align: center;
    margin: 0.9em auto 0.1em;
    color: #15A12F;
}
.btn-d{
            background-color: #ffffff;
            color: #000;
            border: 2px solid #000;
        }
        .btn-p{
            background-color: black;
            color: white;
        }
        .btn-d:hover{
            color: #000;
        }
        .btn-p:hover{
            background-color: black;
            color: white;
        }

</style>
    </head>

    <body>
        
        
<div class="container">
  
    <div class="row">
      	<div class="col-lg-6">
      		<h1 align="center">Forgot Password</h1><br><br>
      	</div>
    </div>
  <form class="form-horizontal" action="doctorreset.jsp" method="post" onsubmit="return validate()">
    <div class="row">
      	<div class="col-lg-4">
      		<h3>Username :</h3>
      	</div>
    </div><br>

    <div class="row">
      	<div class="col-lg-3">
            <input type="email" class="form-control" placeholder="Enter Email" name="t1" required>
      		<br><p id="a" style="color:red"></p>
      	</div>
    </div><br>

    <div class="row">
      		<div class="col-lg-6">
      		<h3>Aadhaar No :</h3>
      		</div>
    </div><br>

    <div class="row">
      	<div class="col-lg-3">
            <input type="password" class="form-control" name="t2" placeholder="Enter Aadhaar No" >
      	<br><p id="b" style="color:red"></p>
      	
      	</div>
    </div>
    
    <div class="row">
      		<div class="col-lg-6">
      		<h3>New Password :</h3>
      		</div>
    </div><br>

    <div class="row">
      	<div class="col-lg-3">
            <input type="password" class="form-control" name="t3" placeholder="Enter New Password" required>
      	<br><p id="b" style="color:red"></p>
      	
      	</div>
    </div>

    
    


    <div class="row">
    	<div class="col-lg-2">
    	</div>
      	<div>
			<input type="submit" value="Reset" class="btn btn-d">
			&nbsp;&nbsp;&nbsp;
			<a href="NEWHOME.html" class="btn btn-p">Home</a>
	</div>
    </div>

   
    
  </form>
</div>

</body>
</html>

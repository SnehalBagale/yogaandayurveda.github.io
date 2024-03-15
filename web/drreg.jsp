<%-- 
    Document   : drreg
    Created on : 25 Dec, 2022, 10:10:08 AM
    Author     : Vaibhav Kumbharikar
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<title>Yoga | Doctor Registration</title>
	        
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
  
  <script type="text/javascript">
  	function validate()
  	{
  		/*NAME*/
  		var a=document.forms[0].elements[0].value;
  		if(a==null || a=="")
  		{
  			document.getElementById("a").innerHTML="Enter Full Name";
			return false;
  		}

  		if(!(isNaN(a)))
			{
				document.getElementById("a").innerHTML="Enter Full Name in Characters";
				return false;
			}

  		/*Email*/
  		var b1=document.forms[0].elements[1].value;
  		if(b1==null || b1=="")
  		{
  			document.getElementById("b1").innerHTML="Enter Email";
			return false;
  		}

  		/*PASS*/
  		var b2=document.forms[0].elements[2].value;
  		if(b2==null || b2=="")
  		{
  			document.getElementById("b2").innerHTML="Enter Password";
			return false;
  		}

  		if(b2.length<8)
  		{
  			document.getElementById("b2").innerHTML="Short Password";
			return false;	
  		}

  		/*CONF PASS*/
  		var b3=document.forms[0].elements[3].value;
  		if(b3==null || b3=="")
  		{
  			document.getElementById("b3").innerHTML="Enter Password";
			return false;
  		}

  		if(b3.length<8)
  		{
  			document.getElementById("b3").innerHTML="Short Password";
			return false;	
  		}

  		if(b3!=b2)
  		{
  			document.getElementById("b3").innerHTML="Password does not match";
			return false;
  		}

  		/*Mo No*/
  		var c1=document.forms[0].elements[4].value;
  		if(c1==null || c1=="")
  		{
  			document.getElementById("c1").innerHTML="Enter Mobile Number";
			return false;
  		}

  		if(c1.length!=10)
  		{
  			document.getElementById("c1").innerHTML="Enter Mobile Number correctly";
			return false;
  		}

  		/*Aadhaar No*/
  		var c2=document.forms[0].elements[5].value;
  		if(c2==null || c2=="")
  		{
  			document.getElementById("c2").innerHTML="Enter Aadhaar Number";
			return false;
  		}

  		if(c2.length!=12)
  		{
  			document.getElementById("c2").innerHTML="Enter Aadhaar Number correctly";
			return false;
  		}

  		/*PAN No*/
  		var c3=document.forms[0].elements[6].value;
  		if(c3==null || c3=="")
  		{
  			document.getElementById("c3").innerHTML="Enter PAN Number";
			return false;
  		}

  		if(c3.length!=10)
  		{
  			document.getElementById("c3").innerHTML="Enter PAN Number correctly";
			return false;
  		}


                /*Degree*/
  		var d1=document.forms[0].elements[7].value;
  		if(d1==null || d1=="")
  		{
  			document.getElementById("d1").innerHTML="Enter Degree";
			return false;
  		}
                
  		/*Speciality*/
  		var d2=document.forms[0].elements[8].value;
  		if(d2==null || d2=="")
  		{
  			document.getElementById("d2").innerHTML="Enter Speciality";
			return false;
  		}
                
                /*Experience*/
                var d3=document.forms[0].elements[8].value;
  		if(d3==null || d3=="")
  		{
  			document.getElementById("d3").innerHTML="Enter Experience";
			return false;
  		}

  		/*P Add*/
  		var e1=document.forms[0].elements[10].value;
  		if(e1==null || e1=="")
  		{
  			
  			document.getElementById("e1").innerHTML="Enter Permanent Address";
			return false;
  		}

  		//C Add
  		var e3=document.forms[0].elements[12].value;
  		if(e3==null || e3=="")
  		{
  			document.getElementById("e3").innerHTML="Enter Current Address";
			return false;
  		}
  		
  		return true;
  	}

  	function cb1()
  	{
  		//Checkbox
	//var e2=document.forms[0].elements[11].checked;
  		
  		if( check1.checked == true)
  		{
  			var e3=document.forms[0].elements[10].value;
  			document.forms[0].elements[12].value = e3;
  		}
  	}
  		
  </script>
  <style>
      *{
          color: #373737;
      }
  	.row{
  		/* color: ; */
  		font-family: ubuntu, segoe ui;
  		font-size: 22px;
  		font-style: bold;
  	}
        
	body{
		/*background-color: #cdcdcd;*/
     background-image: url(drreg.jpg); 
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

	h2{
		color: white;
		font-family:Ubuntu;
	}
        
        sup{
            color: red;
        }
  </style>
</head>
<body >
	<form action="drdatainsert.jsp" method="post" onsubmit="return validate()">
	<h1>Doctor Registration</h1>
	<div class="row text-danger">
		<div class="col-lg-1">
		</div>
		<div class="col-lg-11">
			Full Name :
		</div>
	</div>

	<div class="row text-danger">
		<div class="col-lg-1">
		</div>
		<div class="col-lg-3">
                    <sup> * </sup>First Name :
		</div>
		<div class="col-lg-3">
			<sup> * </sup>Middle Name :
		</div>
		<div class="col-lg-3">
			<sup> * </sup>Last Name :
		</div>
	</div><br>

	<div class="row">
		<div class="col-lg-1">
		</div>
		<div class="col-lg-9">
			<input type="text" name="txtname" class="form-control">
			<br><p id="a" style="color:red"></p>
		</div>
		<div class="col-lg-2">
		</div>
	</div><br>
	
	<div class="row text-danger">
		<div class="col-lg-1">
		</div>
		<div class="col-lg-3">
			<sup> * </sup>Email :
		</div>
		<div class="col-lg-3">
			<sup> * </sup>Password :
		</div>
		<div class="col-lg-3">
			<sup> * </sup>Confirm Password :
		</div>
	</div><br>

	<div class="row">
		<div class="col-lg-1">
		</div>
		<div class="col-lg-3">
			<input type="email" name="txtemail" class="form-control">
		<p id="b1" style="color:red"></p>
		</div>
		<div class="col-lg-3">
			<input type="password" name="txtpass1" class="form-control">
		<p id="b2" style="color:red"></p>
		</div>
		<div class="col-lg-3">
			<input type="password" name="txtpass2" class="form-control">
		<p id="b3" style="color:red"></p>
		</div>
	</div><br>

	<div class="row text-danger">
		<div class="col-lg-1">
		</div>
		<div class="col-lg-3">
			<sup> * </sup>Mobile Number :
		</div>
		<div class="col-lg-3">
			<sup> * </sup>Aadhaar Number :
		</div>
		<div class="col-lg-3">
			<sup> * </sup>PAN Number :
		</div>
	</div><br>
	
	<div class="row">
		<div class="col-lg-1">
		</div>
		<div class="col-lg-3">
			<input type="number" name="txtmono" class="form-control">
			<p id="c1" style="color:red"></p>
		</div>
		<div class="col-lg-3">
			<input type="number" name="txtano" class="form-control">
			<p id="c2" style="color:red"></p>
		</div>
		<div class="col-lg-3">
			<input type="text" name="txtpno" class="form-control">
			<p id="c3" style="color:red"></p>
		</div>
	</div><br>

	<div class="row text-danger">
		<div class="col-lg-1">
		</div>
		<div class="col-lg-3">
			<sup> * </sup>Degree :
		</div>
		<div class="col-lg-3">
			<sup> * </sup>Speciality :
		</div>
		<div class="col-lg-3">
			Experience :
		</div>
	</div><br>

	<div class="row text-danger">
		<div class="col-lg-1">
		</div>
		<div class="col-lg-3">
			<input type="text" name="txtdegree" class="form-control">
		<p id="d1" style="color:red"></p>
		</div>
		<div class="col-lg-3">
			<input type="text" name="txtspecial" class="form-control">
		<p id="d2" style="color:red"></p>
		</div>
		<div class="col-lg-3">
			<input type="text" name="txtexp" class="form-control">
		<p id="d3" style="color:red"></p>
		</div>
	</div><br>

	<div class="row text-danger">
		<div class="col-lg-1">
		</div>
		<div class="col-lg-3">
			<sup> * </sup>Permanent Address :
		</div>
		<div class="col-lg-3">
			Same as Permanent Address :
		</div>
		<div class="col-lg-3">
			<sup> * </sup>Current Address :
		</div>
	</div><br>

	<div class="row">
		<div class="col-lg-1">
		</div>

		<div class="col-lg-3">
			<textarea name="txtpa"></textarea>
			<br><p id="e1" style="color:red"></p>
		</div>
            <div class="col-lg-1">
		</div>
		<div class="col-lg-1">
			<input type="checkbox" name="txtpass" class="form-check-input" id="check1" onclick="cb1()">
		</div>
            <div class="col-lg-1">
		</div>
		<div class="col-lg-3">
			<textarea name="txtca" id="texbox1"></textarea>
			<br><p id="e3" style="color:red"></p>
		</div>
	</div><br>

	<div class="row">
	</div>
	<div class="row">
	</div>

		<div align="center">
			<input type="submit" value="Submit" class="btn btn-light">
			&nbsp;&nbsp;&nbsp;
			<a href="admindashboard.jsp" class="btn btn-dark">Dashboard</a><br><br>
	
</form>
</body>
</html>

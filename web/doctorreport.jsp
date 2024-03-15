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
 
        <title>Yoga | Doctor-wise Report</title>
                                                  
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
     background-image: url(drrep.jpg); 
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

h6{
    font-size: 1.2em;
}
h5{
    color:red;
}
a:hover{
    color: red;
    /*text-decoration: underline;*/
}

    </style>
  
    </head>
    <body> <h1>Doctor Wise Report</h1>
        <form action="doctorreport.jsp">
            
            <div class="row">
                <div class="col-lg-2"></div>
                <div class="col-lg-3">
                    <h2>Choose Doctor Name:</h2>
                </div>

                <div class="col-lg-3">
                    <%
                        Class.forName("com.mysql.jdbc.Driver");
                        Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3308/ya","root","");
                        Statement st=con.createStatement();
                        ResultSet rs=st.executeQuery("select distinct(dname) from consultation");
                        out.println("<select name=d class=form-control>");
                        while(rs.next())
                        {
                            out.println("<option >"+rs.getString(1)+"</option>");
                        }
                        out.println("</select>");
        
                    %>
                    </div>
       
                    <div class="col-lg-2"></div>
            
                
            
            </div><br><br>
                    <div align="center">
			<input type="submit" value="submit" class="btn btn-dark">
                    </div><br><br>
        </form>
        <table class="table table-striped">
            <tr><th class="tbhead">Consult Id
                <th class="tbhead">Client Name
                <th class="tbhead">Symptoms
                <th class="tbhead">Consultation applied Date
                <th class="tbhead">Date of Consultation
                <th class="tbhead">Fees
                <th class="tbhead">Mode of Payment
                <th class="tbhead">Transaction ID 
<!--                <th class="tbhead">DoctorName    -->
                <th class="tbhead">Prescription
                <th class="tbhead">Status</tr>
  <%
  try
    {
        Connection con2=DriverManager.getConnection("jdbc:mysql://localhost:3308/ya","root","");
        Statement st2=con2.createStatement();
        String aa="'"+request.getParameter("d")+"'";
        
        String q="select consultation.cid, consultation.cname, consultation.symptom, consultation.adate, prescription.cdate, consultation.fees, consultation.payment, consultation.tid, consultation.dname, prescription.pre ,consultation.cflag from consultation, prescription WHERE consultation.cid=prescription.cid and dname="+aa+"";
        
        ResultSet rs2=st2.executeQuery(q);
        int amt=0;
        while(rs2.next())
        {
          out.println("<tr>");
          out.println("<td class='tdrow'>"+rs2.getInt(1));
          out.println("<td class='tdrow'>"+rs2.getString(2));
          out.println("<td class='tdrow'>"+rs2.getString(3));
          out.println("<td class='tdrow'>"+rs2.getString(4));
          out.println("<td class='tdrow'>"+rs2.getString(5));
          int pp=rs2.getInt(6);
          amt=amt+pp;
          out.println("<td class='tdrow'>"+pp);
          out.println("<td class='tdrow'>"+rs2.getString(7));
          out.println("<td class='tdrow'>"+rs2.getString(8));
//          out.println("<td class='tdrow'>"+rs2.getString(9));
          out.println("<td class='tdrow'>"+rs2.getString(10));
         // out.println("<td>"+rs2.getString(7));
          int p=rs2.getInt(11);
          if(p==0)
          {
              out.println("<td>Pending");
          }
          else
          {
               out.println("<td>Consulted");
          }
          
          
          
          
        }
        rs2.close();
        st2.close();
        con2.close();
        out.print("</table><br><h6>TotalCollection&nbsp;Rs/- :  "+amt+"</h6>");
        
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

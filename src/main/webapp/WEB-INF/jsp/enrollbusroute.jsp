<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
    <head>
        <link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Tiro+Bangla&display=swap" rel="stylesheet">
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Oxygen:wght@300&display=swap" rel="stylesheet">
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Lato:wght@700&display=swap" rel="stylesheet">
    
        <style>
            *{
    box-sizing: border-box;
    -webkit-box-sizing: border-box;
    -moz-box-sizing: border-box;
}
body{
    width: 100%;
            height: 100vh;
            background: linear-gradient(rgba(0, 0, 0, 0.6), rgba(0, 0, 0, 0.6)), url("https://images.pexels.com/photos/5420712/pexels-photo-5420712.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1");
            background-position: center;
            background-repeat: no-repeat;
            background-size: cover;
            display: table;
            font-family: Montserrat;
}


/* Table Styles */

.table-wrapper{
    margin-top: 400px;
    margin: 10px 70px 70px;
    box-shadow: 0px 35px 50px rgba( 0, 0, 0, 0.2 );
}

.fl-table {
    margin-top:100px;
    margin-left: 150px;
    border-radius: 5px;
    font-size: 18px;
    font-weight: normal;
    border: none;
    border-collapse: collapse;
    width: 40%;
    max-width: 40%;
    white-space: nowrap;
    background-color: white;
    font-family: 'Oxygen', sans-serif;
}

.fl-table td, .fl-table th {
    text-align: center;
    padding: 8px;
}

.fl-table td {
    border-right: 1px solid #f8f8f8;
    font-size: 16px;
    font-family: 'Oxygen', sans-serif;
}

.fl-table thead th {
    color: #ffffff;
    background: #ff7b07;
}

form .input-box span.details{
  display: block;
  font-weight: 600;
  margin-bottom: 5px;
  color: white;
}

.fl-table thead th:nth-child(odd) {
    color: black;
    background:  linear-gradient(rgba(173, 173, 173, 0.6), rgba(173, 173, 173, 0.6));
}

.fl-table tr:nth-child(even) {
    background:  linear-gradient(rgba(177, 177, 177, 0.6), rgba(180, 180, 180, 0.6));
}
.center{
      margin-left: 250px;
      position: absolute;
      top: 40%;
     
      transform: translate(-50%, -50%);
      width: 300px;
      height: 300px;
      background: linear-gradient(rgba(112, 111, 111, 0.651), rgba(114, 114, 114, 0.651));
      opacity: 1;
      border-radius: 10px;
      box-shadow: 10px 10px 15px rgba(0,0,0,0.05);
    }
    .center h1{
        color: white;
      text-align: center;
      padding: 20px 0;
      font-family: 'Lato', sans-serif;

      /* border-bottom: 1px solid white; */
    }
    .center form{
      padding: 0 40px;
      box-sizing: border-box;
      opacity: 0.8;
      font-family: 'Lato', sans-serif;
    }


.header {
            position: absolute;
            /* top: 45%;
            left: 20%; */
            margin-left: 600px;
            margin-top: 20px;
            transform: translate(-50%, -50%);
            color: rgb(170, 160, 160);
            font-size: 24px;
            /* font-style: italic; */
            
        }





        .header h1 {
            color: rgb(255, 255, 255);
            font-size: 40px;
            font-weight: 400;
            /* margin-bottom: 8px; */
            border-bottom:0%;
            /* background-color: #fff; */
            margin-bottom: 0%;
            font-family: 'Lato', sans-serif;
            
        }

        .header b{
            font-weight: 600;
            font-family: 'Lato', sans-serif;
            color: #ff7b07;

        }
        form{
        background-color: transparent;
    }
    form .txt_field{
      position: relative;
      border-bottom: 2px solid white;
      margin: 30px 0;
    }
    .txt_field input{
      width: 100%;
      padding: 0 5px;
      height: 40px;
      font-size: 16px;
      border: none;
      background: none;
      outline: none;
      color: white;
    }
    .txt_field label{
      position: absolute;
      top: 50%;
      left: 5px;
      color: white;
      transform: translateY(-50%);
      font-size: 16px;
      pointer-events: none;
      transition: .5s;
    }
    .txt_field span::before{
      content: '';
      position: absolute;
      top: 40px;
      left: 0;
      width: 0%;
      height: 2px;
      background: #ff851b;
      transition: .5s;
    }
    .txt_field input:focus ~ label,
    .txt_field input:valid ~ label{
      top: -5px;
      color: #ff851b;
    }
    .txt_field input:focus ~ span::before,
    .txt_field input:valid ~ span::before{
      width: 100%;
    }
    .pass{
      margin: -5px 0 20px 5px;
      color: #ff851b;
      text-decoration-color: #ff851b;
      cursor: pointer;
    }
    .pass:hover{
      text-decoration: underline;
    }
    input[type="submit"]{
      width: 100%;
      height: 50px;
      border: 1px solid;
      background: #ff851b;
      border-radius: 25px;
      font-size: 18px;
      color: #e9f4fb;
      font-weight: 700;
      cursor: pointer;
      outline: none;
    }
    input[type="submit"]:hover{
      border-color: #ff851b;
      transition: .5s;
    }
    a:link {
  color: #ff851b;
  background-color: transparent;
  text-decoration: none;
}

a:visited {
  color: #ff851b;
  background-color: transparent;
  text-decoration: none;
}

*{
    box-sizing: border-box;
    -webkit-box-sizing: border-box;
    -moz-box-sizing: border-box;
}
body{
    width: 100%;
            height: 100vh;
            background: linear-gradient(rgba(0, 0, 0, 0.6), rgba(0, 0, 0, 0.6)), url("https://images.pexels.com/photos/5420712/pexels-photo-5420712.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1");
            background-position: center;
            background-repeat: no-repeat;
            background-size: cover;
            display: table;
            font-family: Montserrat;
}


/* Table Styles */

.table-wrapper{
    margin-top: 400px;
    margin: 10px 70px 70px;
    box-shadow: 0px 35px 50px rgba( 0, 0, 0, 0.2 );
}

.fl-table {
    margin-top:20px;
    /* margin-left: 0px; */
    border-radius: 5px;
    font-size: 18px;
    font-weight: normal;
    border: none;
    border-collapse: collapse;
    width: 40%;
    max-width: 40%;
    white-space: nowrap;
    background-color: white;
    font-family: 'Oxygen', sans-serif;
}

.fl-table td, .fl-table th {
    text-align: center;
    padding: 8px;
}

.fl-table td {
    border-right: 1px solid #f8f8f8;
    font-size: 16px;
    font-family: 'Oxygen', sans-serif;
}

.fl-table thead th {
    color: #ffffff;
    background: #ff7b07;
}


.fl-table thead th:nth-child(odd) {
    color: black;
    background:  linear-gradient(rgba(173, 173, 173, 0.6), rgba(173, 173, 173, 0.6));
}

.fl-table tr:nth-child(even) {
    background:  linear-gradient(rgba(177, 177, 177, 0.6), rgba(180, 180, 180, 0.6));
}
.center{
      margin-left: 300px;
      position: absolute;
      /* top: 50%; */
      margin-top: 150px;
     
      transform: translate(-50%, -50%);
      width: 300px;
      height: 300px;
      background: linear-gradient(rgba(112, 111, 111, 0.651), rgba(114, 114, 114, 0.651));
      opacity: 1;
      border-radius: 10px;
      box-shadow: 10px 10px 15px rgba(0,0,0,0.05);
    }
    .center h1{
        color: white;
      text-align: center;
      padding: 20px 0;
      font-family: 'Lato', sans-serif;

      /* border-bottom: 1px solid white; */
    }
    .center form{
      padding: 0 40px;
      box-sizing: border-box;
      opacity: 0.8;
      font-family: 'Lato', sans-serif;
    }


.header {
            position: absolute;
            /* top: 45%;
            left: 20%; */
            margin-left: 600px;
            /* margin-top: 30px; */
            transform: translate(-50%, -50%);
            color: rgb(170, 160, 160);
            font-size: 24px;
            /* font-style: italic; */
            
        }





        .header h1 {
            color: rgb(255, 255, 255);
            font-size: 40px;
            font-weight: 400;
            /* margin-bottom: 8px; */
            border-bottom:0%;
            /* background-color: #fff; */
            margin-bottom: 0%;
            font-family: 'Lato', sans-serif;
            
        }

        .header b{
            font-weight: 600;
            font-family: 'Lato', sans-serif;
            color: #ff7b07;

        }
        form{
        background-color: transparent;
    }
    form .txt_field{
      position: relative;
      border-bottom: 2px solid white;
      margin: 30px 0;
    }
    .txt_field input{
      width: 100%;
      padding: 0 5px;
      height: 40px;
      font-size: 16px;
      border: none;
      background: none;
      outline: none;
      color: white;
    }
    .txt_field label{
      position: absolute;
      top: 50%;
      left: 5px;
      color: white;
      transform: translateY(-50%);
      font-size: 16px;
      pointer-events: none;
      transition: .5s;
    }
    .txt_field span::before{
      content: '';
      position: absolute;
      top: 40px;
      left: 0;
      width: 0%;
      height: 2px;
      background: #ff851b;
      transition: .5s;
    }
    .txt_field input:focus ~ label,
    .txt_field input:valid ~ label{
      top: -5px;
      color: #ff851b;
    }
    .txt_field input:focus ~ span::before,
    .txt_field input:valid ~ span::before{
      width: 100%;
    }
    .pass{
      margin: -5px 0 20px 5px;
      color: #ff851b;
      text-decoration-color: #ff851b;
      cursor: pointer;
    }
    .pass:hover{
      text-decoration: underline;
    }
    input[type="submit"]{
      width: 100%;
      height: 50px;
      border: 1px solid;
      background: #ff851b;
      border-radius: 25px;
      font-size: 18px;
      color: #e9f4fb;
      font-weight: 700;
      cursor: pointer;
      outline: none;
    }
    input[type="submit"]:hover{
      border-color: #ff851b;
      transition: .5s;
    }
    a:link {
  color: #ff851b;
  background-color: transparent;
  text-decoration: none;
}

a:visited {
  color: #ff851b;
  background-color: transparent;
  text-decoration: none;
}
.second{
    margin-left: 550px;
    margin-top: -40px;
}




      

/* Responsive */

@media (max-width: 767px) {
    .fl-table {
        display: block;
        width: 100%;
    }
    .table-wrapper:before{
        content: "Scroll horizontally >";
        display: block;
        text-align: right;
        font-size: 11px;
        color: white;
        padding: 0 0 10px;
    }
    .fl-table thead, .fl-table tbody, .fl-table thead th {
        display: block;
    }
    .fl-table thead th:last-child{
        border-bottom: none;
    }
    .fl-table thead {
        float: left;
    }
    .fl-table tbody {
        width: auto;
        position: relative;
        overflow-x: auto;
    }
    .fl-table td, .fl-table th {
        padding: 20px .625em .625em .625em;
        height: 60px;
        vertical-align: middle;
        box-sizing: border-box;
        overflow-x: hidden;
        overflow-y: auto;
        width: 120px;
        font-size: 13px;
        text-overflow: ellipsis;
    }
    .fl-table thead th {
        text-align: left;
        border-bottom: 1px solid #f7f7f9;
    }
    .fl-table tbody tr {
        display: table-cell;
    }
    .fl-table tbody tr:nth-child(odd) {
        background: none;
    }
    .fl-table tr:nth-child(even) {
        background: transparent;
    }
    .fl-table tr td:nth-child(odd) {
        background: #F8F8F8;
        border-right: 1px solid #E6E4E4;
    }
    .fl-table tr td:nth-child(even) {
        border-right: 1px solid #E6E4E4;
    }
    .fl-table tbody td {
        display: block;
        text-align: center;
    }
}

#route{
  height: 45px;
  width: 100%;
  /* color:#757575; */
  color: black;
  outline: none;
  font-size: 15px;
  border-radius: 5px;
  padding-left: 15px;
  border: 1px solid #ccc;
  background-color: rgba(255, 255, 255, 0.925);
  border-bottom-width: 2px;
  transition: all 0.3s ease;
}





      

/* Responsive */

@media (max-width: 767px) {
    .fl-table {
        display: block;
        width: 100%;
    }
    .table-wrapper:before{
        content: "Scroll horizontally >";
        display: block;
        text-align: right;
        font-size: 11px;
        color: white;
        padding: 0 0 10px;
    }
    .fl-table thead, .fl-table tbody, .fl-table thead th {
        display: block;
    }
    .fl-table thead th:last-child{
        border-bottom: none;
    }
    .fl-table thead {
        float: left;
    }
    .fl-table tbody {
        width: auto;
        position: relative;
        overflow-x: auto;
    }
    .fl-table td, .fl-table th {
        padding: 20px .625em .625em .625em;
        height: 60px;
        vertical-align: middle;
        box-sizing: border-box;
        overflow-x: hidden;
        overflow-y: auto;
        width: 120px;
        font-size: 13px;
        text-overflow: ellipsis;
    }
    .fl-table thead th {
        text-align: left;
        border-bottom: 1px solid #f7f7f9;
    }
    .fl-table tbody tr {
        display: table-cell;
    }
    .fl-table tbody tr:nth-child(odd) {
        background: none;
    }
    .fl-table tr:nth-child(even) {
        background: transparent;
    }
    .fl-table tr td:nth-child(odd) {
        background: #F8F8F8;
        border-right: 1px solid #E6E4E4;
    }
    .fl-table tr td:nth-child(even) {
        border-right: 1px solid #E6E4E4;
    }
    .fl-table tbody td {
        display: block;
        text-align: center;
    }
}

        </style>
    </head>
    
<body>
    
    <div class="header">
        <h1>Enroll <b> Bus </b> Route</h1>
    
        
    </div>
    <table  name="viewuserdetails"  class="content-table">
    
        <div class="table-wrapper">
            <table class="fl-table">
                <thead>
                    <tr>
                        <th scope="col">Bus number</th>
                        <th scope="col">Route number</th>
                        <th scope="col">Driver name</th>
                        <th scope="col">Driver Phone number</th>
                        <th scope="col">Destination</th>
                        <th scope="col">Stopping</th>
                        <th scope="col">Fee</th>
                        
                        
                        
                    </tr>
                    </thead>
                <tbody>
                    <c:forEach var="bus" items="${flist}">
                        <tr>
                            <td>${bus.busnum }</td>
                        <td>${bus.routenum }</td>
                        <td>${bus.drivername}</td>
                        <td>${bus.driverphonenum }</td>
                        <td>${bus.destination}</td>
                        <td>${bus.stoppings}</td>
                        <td>${bus.fee }</td>
                            
                        </tr>
                        </c:forEach>
                    </tbody>
            </table>
        </div>
          </table>

          <div class="center">
            <h1> Select Bus from list </h1>
            <form method="post" action="enrollbusroute">
                <div class="input-box">
                    <span class="details">Route number</span>
                    <select id="route" name="route">
                      <option value="">Select</option>
                      <c:forEach var="bus_" items="${flist }">
                    <option value="${bus_.busnum }">${bus_.busnum }</option>
                    </c:forEach>
                    </select>
                  </div>
              
              
             
              
              <input type="submit" value="Register"  name="submit" id="submit" style="margin-top: 20PX;">
              
              
            </form>
            
          </div>


   
          <a href="studentfachome" style="margin-top:-500px;left: 50px;"><img src="https://i0.wp.com/www.indiaretailing.com/wp-content/uploads/2016/02/Home-Button.png" style="width:50px;height:50px; margin-top: -175px; "></a> 
<c:if test="${blist ne null}">
<table  name="enrollbusroute"  class="content-table">
    
<div class="table-wrapper">
    <table class="fl-table second" name="viewuserdetails" >
        <thead>
            <tr>
                <th scope="col"></th>
                <th scope="col">Details</th>
                
                
                
            </tr>
            </thead>
            <tbody>
            <c:forEach var="busdetail" items="${blist}">
            <tr>
                <td>Bus Number</td>
                <td>${busdetail.routeno}</td>
            </tr>
            <tr>
                <td>Route Number</td>
                <td>${busdetail.routeno }</td>
            </tr>
          <tr>
                <td>Stoppings Points</td>
                <td>${busdetail.stoppings }</td>
          </tr>
          <tr>
                <td>Fees</td>
                <td>${busdetail.routefees }</td>
          </tr>
          <tr>
              <td>Driver Name</td>
               <td>${busdetail.drivername }</td>
          <tr>
                <td>Driver Number</td>
                <td>${busdetail.driverphn}</td>
          </tr>
          
            </c:forEach>
            </tbody>
            </table>
          </form>
        </c:if>
        <br>
        <h color="#ff851b" class="message" style="color: #ff851b; margin-left: 700PX;">${msg}</h>
        
  </body>
</html>

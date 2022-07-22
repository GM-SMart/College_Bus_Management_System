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
    margin-top: 0px;
    margin-left: 50px;
    border-radius: 5px;
    font-size: 18px;
    font-weight: normal;
    border: none;
    border-collapse: collapse;
    width: 90%;
    max-width: 90%;
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


.header {
            position: absolute;
            /* top: 45%;
            left: 20%; */
            margin-left: 600px;
            margin-top: -50px;
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
            font-family: 'Oxygen', sans-serif;
            color: #ff7b07;

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
    <a href="adminhome" style="margin-top:0;"><img src="https://i0.wp.com/www.indiaretailing.com/wp-content/uploads/2016/02/Home-Button.png" style="width:50px;height:50px; margin-top: 40px; margin-left: 20px;"></a>

    <div class="header">
        <h1>View All<b> Users </b></h1>
        
        
    </div>
    <br><h color="red" style="font-weight:bold">${msg}</h>
<table  name="viewuserdetails"  class="content-table">
    
<div class="table-wrapper">
    <table class="fl-table">
        <thead>
            <tr>
                <th >Id</th>
                <th >Name</th>
                <th scope="col">DOB</th>
                <th scope="col">Department</th>
                <th scope="col">Phone Number</th>
                <th scope="col">Role</th>
                <th scope="col">Bus Number</th>
                <th scope="col">Route Number</th>                        
                <th scope="col">Stopping Point</th>
                <th scope="col">Fee Amount</th>
                
                
            </tr>
            </thead>
        <tbody>
            <c:forEach var="user" items="${flist}">
                <tr>
                    <td>${user.id }</td>
                    <td>${user.name }</td>
                    <td>${user.dob }</td>
                    <td>${user.department }</td>
                    <td>${user.phonenum }</td>
                    <td>${user.role}</td>
                    <td>${user.busno }</td>
                    <td>${user.busno }</td>
                    <td>${user.stopping }</td>
                    <td>${user.userfees }</td>
                    
                </tr>
                </c:forEach>
            </tbody>
    </table>
</div>
  </table>
</body>
</html>
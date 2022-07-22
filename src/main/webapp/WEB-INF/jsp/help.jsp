<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>
<title>Help</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/css/bootstrap.min.css" rel="stylesheet"
    integrity="sha384-+0n0xVW2eSR5OomGNYDnhzAbDsOXxcvSN1TPprVMTNDbiYZCxYbOOl7+AMvyTG2x" crossorigin="anonymous">

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
        @import url('https://fonts.googleapis.com/css2?family=Noto+Sans:wght@700&family=Poppins:wght@400;500;600&display=swap');
        nav {
            color: black;
            padding: 15px;

        }

        h1 {
            margin: 330px;
            margin-left: 800px;
            color: red;
        }

        h2 {

            font-family: "Poppins", sans-serif;
            color: white;
            font-size: 30px;
            font-weight: bold;
            
            text-transform: uppercase;
            margin: 5px 0;

            text-align: center;
            nav-down: auto;
        }

        a {
            text-decoration: mediumblue;

            font-size: 40px;
            margin: 50px;
        }
        .query{
            color: #ff7b07;


        }


        body {
            width: 100%;
            height: 100vh;
            background: linear-gradient(rgba(0, 0, 0, 0.15), rgba(0, 0, 0, 0.15)), url("https://images.pexels.com/photos/186408/pexels-photo-186408.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2");
            background-position: center;
            background-repeat: no-repeat;
            background-size: cover;
            display: table;
            font-family: Montserrat;
        }

        header {
            height: 50px;
            background-color: lightsteelblue;
        }

        label {
            color: white;
            font-size: 30px;
            margin: 5px 0;

            font-weight: bold;

        }

        .p {
            text-align: left;
            color: white;
            width: bold;
            font-size: x-large;
            font-family: 'Franklin Gothic Medium', 'Arial Narrow', Arial, sans-serif;
        }

        .message {
            color: #ff7b07;
            width: 100%;
            position: relative;
            margin-bottom: 60px;
            display: flex;
            justify-content: center;
        }

        .message .success {
            font-size: 30px;
            font-weight: 8;
            font-weight: bold;
            color: green;
            position: absolute;
            animation: submit .400s linear;
            display: none;
        }

        .message .danger {
            font-size: 30px;
            font-weight: 8;
            font-weight: bold;
            color: red;
            transition: .3s;
            position: absolute;
            animation: submit .200s linear;
            display: none;
        }
    </style>
</head>

<body>
    <div> </div>
    <div>
        <form action="help" method="post" class="helpdesk">
            <div>
                <h2>Ask a<b class="query"> Query</b></h2>
            </div>
            <div class="row">
                <div class="col-md-3"></div>
                <div class="col-md-6">
                    <div class="login_container">
                        <div>
                            <div class="mb-3">
                                <label for="Issue" class="form-label">Issue</label>
                                <textarea type="text" class="form-control" id="Issue" rows="5" name="issue" value="${issue}"></textarea>
                            </div>
                            <div class="mb-3">
                                <label for="Description" class="form-label">Description</label>
                                <textarea type="description" class="form-control" id="description" rows="5"
                                    name="description"  value="${description}"></textarea>
                            </div>
                            <div style="text-align: center;">
                                <input type="submit" value="submit" class="submit-btn" name="submit" id="submit"
                                    style="font-size: 25px; font-weight: bold;  padding: 6px 7px; width: 20%; border-radius:1px; color:white; background-color: #ff7b07;">
                            </div>
                            <div class="message" >${msg}</div>
                        </div>
                    </div>
                </div>
                <div class="col"></div>
            </div>
        </form>
    </div>
    <div>
        <form class="p">
            <p>
                For any Clarifications<br>
                Contact: Mr.Rishi<br>
                Bus Incharge,<br>
                Phone:9089789890
            </p>
        </form>
    </div>
</body>

</html>
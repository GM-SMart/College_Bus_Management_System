<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>

<html lang="en" dir="ltr">

<head>
  <meta charset="UTF-8">
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
    @import url('https://fonts.googleapis.com/css2?family=Poppins:wght@200;300;400;500;600;700&display=swap');

    * {
      margin: 0;
      padding: 0;
      box-sizing: border-box;
      font-family: 'Poppins', sans-serif;
    }

    body {
      /* height: 100vh; */
      display: flex;
      justify-content: center;
      align-items: center;
      padding: 20px;
      background: linear-gradient(rgba(0, 0, 0, 0.6), rgba(0, 0, 0, 0.4)), url("https://images.pexels.com/photos/5420712/pexels-photo-5420712.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1");
    }

    .container {
      max-width: 700px;
      width: 100%;
      background: linear-gradient(rgba(112, 111, 111, 0.651), rgba(114, 114, 114, 0.651));
      padding: 25px 30px;
      border-radius: 5px;
      box-shadow: 0 5px 10px rgba(0, 0, 0, 0.15);
      margin-left: 550px;
      margin-top: 0px;
      margin-bottom: 0px;
    }

    .container .title {
      font-size: 25px;
      font-weight: 600;
      position: relative;
      color: White;
    }

    .container .secquest {
      font-size: 20px;
      font-weight: 500;
      padding-top: 15px;
      padding-bottom: 15px;
      color: #fff;
    }

    .container .title::before {
      content: "";
      position: absolute;
      left: 0;
      bottom: 0;
      height: 3px;
      width: 30px;
      border-radius: 5px;
      background: #ff851b;
      ;
    }

    .content form .user-details {
      display: flex;
      flex-wrap: wrap;
      justify-content: space-between;
      margin: 20px 0 12px 0;
    }

    form .user-details .input-box {
      margin-bottom: 15px;
      width: calc(100% / 2 - 20px);
    }

    form .input-box span.details {
      display: block;
      font-weight: 600;
      margin-bottom: 5px;
      color: white;
    }

    .centerr {
      margin-left: 175px;
    }

    .user-details .input-box input {
      height: 45px;
      width: 100%;
      outline: none;
      font-size: 15px;
      border-radius: 5px;
      padding-left: 14px;
      border: 1px solid #ccc;
      border-bottom-width: 2px;
      background-color: rgba(255, 255, 255, 0.925);
      transition: all 0.3s ease;
    }

    .secquest1 .input-box input {
      height: 40px;
      width: 48%;
      /* color:#757575; */
      color: black;
      outline: none;
      font-size: 14px;
      border-radius: 5px;
      padding-left: 15px;
      border: 1px solid #ccc;
      background-color: rgba(255, 255, 255, 0.925);
      border-bottom-width: 2px;
      transition: all 0.3s ease;
    }

    .secquest1 .input-box .details {
      padding-top: 10px;
      padding-bottom: 10px;
    }

    #dob {
      /* color:#757575; */
      color: black;
    }

    #role {
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

    ::placeholder {
      color: black;

    }

    .header {
      position: absolute;
      top: 45%;
      left: 20%;
      transform: translate(-50%, -50%);
      color: rgb(170, 160, 160);
      font-size: 24px;
      /* font-style: italic; */

    }

    .header {
      margin-left: -75px;
    }



    .header h1 {
      color: rgb(255, 255, 255);
      font-size: 70px;
      font-weight: 400;
      /* margin-bottom: 8px; */
      border-bottom: 0%;
      /* background-color: #fff; */
      margin-bottom: 0%;
      font-family: 'Lato', sans-serif;

    }

    .header b {
      font-weight: 600;
      font-family: 'Oxygen', sans-serif;
      color: #ff7b07;

    }




    .header p {
      color: rgb(255, 255, 255);
      font-size: 50px;
      font-weight: lighter;
      /* padding: 30px; */
      top: 0%;
      /* background-color: blue; */
      border-top: 0%;
      margin-top: 0%;
      padding-left: 5px;
      font-family: 'Oxygen', sans-serif;

    }



    #department {
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

    #address {
      height: 45px;
      width: 100%;
      outline: none;
      font-size: 15px;
      border-radius: 5px;
      padding-top: 9px;
      padding-left: 15px;
      border: 1px solid #ccc;
      background-color: rgba(255, 255, 255, 0.925);
      border-bottom-width: 2px;
      transition: all 0.3s ease;
    }

    .user-details .input-box input:focus,
    .user-details .input-box input:valid {
      border-color: #ff851b;
    }

    form .gender-details .gender-title {
      font-size: 20px;
      font-weight: 500;
    }

    form .category {
      display: flex;
      width: 80%;
      margin: 14px 0;
      justify-content: space-between;
    }

    form .category label {
      display: flex;
      align-items: center;
      cursor: pointer;
    }

    form .category label .dot {
      height: 18px;
      width: 18px;
      border-radius: 50%;
      margin-right: 10px;
      background: #d9d9d9;
      border: 5px solid transparent;
      transition: all 0.3s ease;
    }

    form input[type="radio"] {
      display: none;
    }

    form .button {
      height: 45px;
      margin: 35px 0
    }

    form .button input {
      height: 100%;
      width: 100%;
      border-radius: 5px;
      border: none;
      color: #fff;
      font-size: 18px;
      font-weight: 500;
      letter-spacing: 1px;
      cursor: pointer;
      transition: all 0.3s ease;
      background: #ff851b;
    }

    form .button input:hover {

      color: black;
    }

    @media(max-width: 584px) {
      .container {
        max-width: 100%;
      }

      form .user-details .input-box {
        margin-bottom: 15px;
        width: 100%;
      }

      form .category {
        width: 100%;
      }

      .content form .user-details {
        max-height: 300px;
        overflow-y: scroll;
      }

      .user-details::-webkit-scrollbar {
        width: 5px;
      }
    }

    @media(max-width: 459px) {
      .container .content .category {
        flex-direction: column;
      }
    }
  </style>
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
</head>

<body>
  <a href="adminhome" style="margin-top: -475px;"><img
      src="https://i0.wp.com/www.indiaretailing.com/wp-content/uploads/2016/02/Home-Button.png"
      style="width:50px;height:50px; margin-top: -500px;"></a>

  <div class="header">
    <h1><b>Add</b> Bus</h1>

    <p>Route</p>
  </div>
  <div class="container">
    <!-- <div class="title">Add Bus Route</div> -->
    <div class="content">

      <form id="addbusroute" method="post">
        <div class="user-details">
          <div class="input-box">
            <span class="details">Route No : </span>
            <input type="number" name="routenum" id="routenum" placeholder="Enter Route Number" required>
          </div>
          <div class="input-box">
            <span class="details">Bus No :</span>
            <input type="number" name="busnum" id="busnum" placeholder="Enter Bus Number" required>
          </div>
          <div class="input-box">
            <span class="details">Driver Name : </span>
            <input type="text" id="drivername" name="drivername" placeholder="Enter Driver Name" required>
          </div>

          <div class="input-box">
            <span class="details">Driver Phone Number : </span>
            <input type="tel" id="driverphonenum" name="driverphonenum" placeholder="Enter Driver Ph-no" required>
          </div>



          <div class="input-box">
            <span class="details">Destination :</span>
            <input type="text" name="destination" id="destination" placeholder="Enter Destination" required>
          </div>

          <div class="input-box">
            <span class="details">Stopping Points :</span>
            <input type="text" name="stoppings" id="stoppings" placeholder="Enter Stopping seperated by ," required>
          </div>



          <div class="input-box">
            <span class="details">Fee:</span>
            <input type="number" name="fee" id="fee" placeholder="Enter fee amount" required>
          </div>


        </div>


        <div class="button">
          <input type="submit" value="Submit" name="submit" id="submit">
        </div>

        <h color="#ff851b">${msg}</h>




      </form>
    </div>
  </div>


</body>

</html>
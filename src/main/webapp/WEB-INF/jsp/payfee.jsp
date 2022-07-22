<!DOCTYPE html>

<html lang="en" dir="ltr">

<head>
    <meta charset="UTF-8">
    -<title> Validate Profile </title>-
    <style>
        @import url('https://fonts.googleapis.com/css2?family=Poppins:wght@200;300;400;500;600;700&display=swap');

        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
            font-family: 'Poppins', sans-serif;
        }

        body {
            height: 100vh;
            display: flex;
            justify-content: center;
            align-items: center;
            padding: 10px;
            background: linear-gradient(rgba(0, 0, 0, 0.4), rgba(0, 0, 0, 0.4)), url("https://picjumbo.com/wp-content/uploads/morning-bus-ride-to-the-work-1570x1048.jpg");
        }

        .container {
            max-width: 700px;
            width: 100%;
            height: 575px;
            background: linear-gradient(rgba(112, 111, 111, 0.651), rgba(114, 114, 114, 0.651));
            padding: 25px 30px;
            border-radius: 5px;
            box-shadow: 0 5px 10px rgba(0, 0, 0, 0.15);
            margin-top: 20px;

        }

        .container .title {
            font-size: 35px;
            font-weight: 600;
            position: relative;
            color: #ff851b;
            /* text-decoration: underline; */
        }

        /* .container .title::before{
  content: "";
  position: absolute;
  left: 0;
  bottom: 0;
  height: 3px;
  width: 30px;
  border-radius: 5px;
  background: #ff7700;; 
} */
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

        .user-details {
            height: 45px;
            width: 100%;
            outline: none;
            font-size: 20px;
            border-radius: 5px;
            padding-left: 200px;
            padding-top: 20px;
            /* border: 1px solid rgb(255, 255, 255); */
            border-bottom-width: 2px;
            transition: all 0.3s ease;
            color: #ff851b;
        }


        .abc {
            padding-top: 5px;
            padding-left: 10px;
        }

        .xyz{
            padding-left: 50px;
        }



        /* #dob{
  /* color:#757575; 
  color: black;
}

#role{
  height: 45px;
  width: 100%;
  /* color:#757575; 
  color: black;
  outline: none;
  font-size: 16px;
  border-radius: 5px;
  padding-left: 15px;
  border: 1px solid #ccc;
  border-bottom-width: 2px;
  transition: all 0.3s ease;
} */

        /* ::placeholder{
  color: black;
}

#department{
  height: 45px;
  width: 100%;
  /* color:#757575; 
  color: black;
  outline: none;
  font-size: 16px;
  border-radius: 5px;
  padding-left: 15px;
  border: 1px solid #ccc;
  border-bottom-width: 2px;
  transition: all 0.3s ease;
} */

        /* #address{
  height: 45px;
  width: 100%;
  outline: none;
  font-size: 16px;
  border-radius: 5px;
  padding-top: 9px;
  padding-left: 15px;
  border: 1px solid #ccc;
  border-bottom-width: 2px;
  transition: all 0.3s ease;
} */

        /* .user-details .input-box input:focus,
.user-details .input-box input:valid{
  border-color: #2fec09;
} */






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

        /* #dot-1:checked ~ .category label .one,
 #dot-2:checked ~ .category label .two,
 #dot-3:checked ~ .category label .three{
   background: #9b59b6;
   border-color: #d9d9d9;
 } */
        /* form input[type="radio"]{
   display: none;
 }
 form .button{
   height: 45px;
   margin: 35px 0
 } */
        /* form .button input{
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
   background: #8d8279;
 } */
        .message {
            margin-left: 40%;
            color: #ff851b;
            padding: 10px;
        }


        button {
            width: 250px;
            height: 30px;
            border: 1px solid;
            background: #ff851b;
            border-radius: 25px;
            font-size: 15px;
            color: #e9f4fb;
            font-weight: 500;
            cursor: pointer;
            outline: none;
        }

        button:hover {
            border-color: #ff851b;
            transition: .5s;
        }


        button {
            width: 250px;
            height: 30px;
            border: 1px solid;
            background: #ff851b;
            border-radius: 25px;
            font-size: 15px;
            color: #e9f4fb;
            font-weight: 500;
            cursor: pointer;
            outline: none;
        }

        button:hover {
            border-color: #ffffff;
            transition: .5s;
        }


        .user-details b{
                color: white;
        }


        .input-box1{
            color: white;
            font-size: 22px;
            font-weight: 600;
        }


    </style>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
</head>

<body>
    <div class="container">
        <div class="title">Pay Fee</div>
        <div class="message">${msg}</div>
        <div class="content">
            <div class="user-details">
                <div>
                    <span style="color: #ff851b;">Hello <b>  ${username}  </b></span>
                </div>
                <c:if test="${fee != null}">
                    <div class="input-box">
                        <span class="details">Pending Fee: <b>${fee}</b></span>
                    </div>
                    <br>
                    <div class="input-box1">
                        <div class="xyz">
                        <span class="details"> Payment Type</span><br></div>
                        <div class="abc">
                            <a href="/accountpayment"><button>Pay via Account Balance</button></a><br>
                            <a href="/cardpayment"><button>Pay via Cards</button></a></div>

                        </div>
                </c:if>
                <c:if test="${fee == null}">
                    <br>
                    <div>
                        <span style="color: rgb(255, 255, 255);">You Already Paid the Fee!</span>
                    </div>
                </c:if>

            </div>

        </div>

</body>

</html>
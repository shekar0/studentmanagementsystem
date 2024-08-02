<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="stylesheet" href="index.css">
    <style type="text/css">
    *{
    margin: 0;
    padding: 0;
    box-sizing: border-box;
}
body{
    background-image: url('https://i.pinimg.com/originals/22/a5/a7/22a5a7b9dbc0e29ccef006dea5981367.png');
    width: 100%;
   height: 100vh; 
      background-repeat: no-repeat;
    background-size: cover;
    
    margin: 0;
    padding: 0;
}
.container1{
    display: flex;
    flex-direction: column;
    position: relative;
   width: 450px;
   height: 450px;
   background-color: transparent;
   justify-content: center;
   align-items: center;
   
   top: 50%;
   left:50%;
   transform: translate(-50%,-50%);
   margin-left: -30vh;
   margin-top: -15vh;
}
.container2 img{
    height: 300px;
    width: 600px;
    margin-left: 100px;
}
.container3 button{
    height: 40PX;
    width: 150PX;
    border: 1px solid black;
    border-radius: 10PX;
    color: aliceblue;
    font-weight: 600;
    color: black;
    background-color: transparent;
    cursor: pointer;
    margin-left: 550px;
    
}
.nav{
    width: 100%;
    height: 45px;
    background-color: rgba(0, 0, 0, 0.466);
    backdrop-filter:blur(5px);
    color: #fff;
    font-size: 5vh;
}
.nav h6{
    padding: 10px;
}
.container3 button:hover{
    background-color: #222;
    color: #fff;
}
    </style>
</head>
<body>
    <div class="nav">
        <h6> Student Management System</h6>
    </div>
    <div class="container1">
        <div class="container2">
            <img src="https://pngimg.com/uploads/welcome/welcome_PNG111.png" alt="" width="50px" height="50px">

        </div>
        <div class="container3">

            <a href="admin.jsp"> <button>ADMIN</button></a>

        </div>
    </div>
    
</body>
</html>
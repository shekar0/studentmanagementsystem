<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Login Page</title>
    <link rel="stylesheet" href="styles.css">
    <style type="text/css">


    body {
    margin: 0;
    padding: 0;
   
    background: url('https://i.pinimg.com/originals/22/a5/a7/22a5a7b9dbc0e29ccef006dea5981367.png');
    background-size: cover;
   width: 100%;
    
    
}

.login-container {
    display: flex;
    justify-content: center;
    align-items: center;
   
    background-color: transparent;
}

.login-box {
    background-color:transparent;
   
    box-shadow: 0 4px 30px rgba(0, 0, 0, 0.751);
    padding: 20px;
    border-radius: 30px;
    color: black;
    width: 360px;
    border: 1px solid black;
    
    
   
    margin-bottom: 5rem;
}

.login-box h2 {
    margin-bottom: 20px;
    font-size: 30px;
    text-align: center;
}

.textbox {
    margin-bottom: 20px;
}
.textbox label{
   padding-left:20px;
   
   padding-bottom: 10px;
   
}

.textbox input {
    width: 80%;
    padding: 10px;
    border: none;
    border-radius: 20px;
    outline: none;
    background:transparent;
    color: black;
    backdrop-filter: blur(5px);
    border-bottom: 1px solid black;
    margin-left: 20px;
    margin-top: 5px;
    margin-bottom: 10px;
}

 .textbox ::placeholder{
   color: black;
   
}

.btn {
    width: 90%;
    padding: 10px;
    height: 40px;
    border: none;
    border-radius: 30px;
    
    cursor: pointer;
    font-size: 20px;
    font-weight: 500;
    background-color: #222;
   color: #fff;
    
    margin-left: 20px;
    margin-bottom: 30px;
}

.login-box button:hover {
    background: #fff;
    color: black;
   
}
.nav{
    width: 100%;
    height: 45px;
    background-color: rgba(0, 0, 0, 0.466);
    backdrop-filter:blur(5px);
    color: #fff;
    font-size: 5vh;
    margin-top: -60px;
    margin-bottom: 40px;
}
.nav h6{
    padding: 10px;
}
    
    </style>
</head>
<body>
    <div class="nav">
        <h6> Student Management System</h6>
    </div>
    <div class="login-container">
        <div class="login-box">
            <h2>Register</h2>
            <form action="studentregister" method="post">
            <div class="textbox">
                    <label>Name</label>
                    <input type="text" placeholder="Enter marks" required name="name" >
                </div>
                
                <div class="textbox">
                    <label>telugu</label>
                    <input type="text" placeholder="Enter marks" required name="telugu" >
                </div>
                <div class="textbox">
                    <label>english</label>
                    <input type="text" placeholder="Enter marks" required name="english" >
                </div>
                <div class="textbox">
                    <label>hindi</label>
                    <input type="text" placeholder="Enter marks" required name="hindi" >
                </div>
                <div class="textbox">
                    <label>maths</label>
                    <input type="text" placeholder="Enter marks" required name="maths" >
                </div>
                <div class="textbox">
                    <label>science</label>
                    <input type="text" placeholder="Enter marks" required name="science" >
                </div>
                <div class="textbox">
                    <label>social</label>
                    <input type="text" placeholder="Enter marks" required name="social" >
                </div>
               
               
               <a href="welcome.jsp"> <button type="submit" class="btn">Register</button></a>
               
            </form>
        </div>
    </div>
</body>
</html>
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
    font-family: Arial, sans-serif;
    background: url('https://r4.wallpaperflare.com/wallpaper/764/505/66/baby-groot-4k-hd-superheroes-wallpaper-56a4b88b9246d7825647d34a12b4c573.jpg') no-repeat center center fixed;
    background-size: cover;
    display: flex;
    justify-content: center;
    align-items: center;
    height: 100vh;
    overflow: hidden;
}

.login-container {
    display: flex;
    justify-content: center;
    align-items: center;
    height: 100%;
    width: 100%;
}

.login-box {
    background: rgba(255, 255, 255, 0.1);
    backdrop-filter: blur(10px);
    box-shadow: 0 4px 30px rgba(0, 0, 0, 0.1);
    padding: 20px;
    border-radius: 10px;
    color: #fff;
    width: 300px;
    
    border: 1px solid rgba(255, 255, 255, 0.3);
    margin-left: 60rem;
    margin-bottom: 5rem;
}

.login-box h2 {
    margin-bottom: 20px;
    font-size: 24px;
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
    border-radius: 5px;
    outline: none;
    background: rgba(255, 255, 255, 0.1);
    color: #fff;
    backdrop-filter: blur(5px);
    margin-left: 20px;
    margin-top: 5px;
}

 .textbox ::placeholder{
   color: #fff;
   
}

.btn {
    width: 90%;
    padding: 10px;
    border: none;
    border-radius: 5px;
    background: #132442;
    color: #fff;
    cursor: pointer;
    font-size: 16px;
    backdrop-filter: blur(5px);
    margin-left: 20px;
}

.btn:hover {
    background: rgba(66, 133, 244, 1);
}
    
    </style>
</head>
<body>
    <div class="login-container">
        <div class="login-box">
            <h2>Register</h2>
            <form action="register" method="post">
            <div class="textbox">
                    <label>Name</label>
                    <input type="text" placeholder="Enter your name" required name="name" >
                </div>
                
                <div class="textbox">
                    <label>Email</label>
                    <input type="email" placeholder="Enter your email" required name="email" >
                </div>
                <div class="textbox">
                 <label>Confirm password</label>
                    <input type="password" placeholder="Enter your password" required name="password" >
                    
                </div>
                 <div class="textbox">
                 <label>Confirm password</label>
                    <input type="password" placeholder="Enter your confirmpassword" required name="confirmpassword" >
                </div>
               
                <button type="submit" class="btn">Register</button>
               
            </form>
        </div>
    </div>
</body>
</html>
    
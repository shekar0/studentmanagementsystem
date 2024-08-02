<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="stylesheet" href="admin.css">
    <style>
@import url('https://fonts.googleapis.com/css2?family=Caveat:wght@400..700&family=Dancing+Script:wght@400..700&family=Pacifico&family=Protest+Revolution&family=Roboto:wght@400;500;700;900&display=swap');
*{
    margin: 0;
    padding: 0;
    box-sizing: border-box;
}
body{
    background-image: url('https://i.pinimg.com/originals/22/a5/a7/22a5a7b9dbc0e29ccef006dea5981367.png');
    background-repeat: no-repeat;
    height: 100vh;
    width: 100%;
    background-size: cover;
}
.container1{
    display: flex;
    flex-direction: row;
    justify-content: space-evenly;
    align-items: center;
    position: absolute;
    width: 1000px;
    height: 100px;
    background-color: transparent;
    top: 50%;
    left: 50%;
    transform: translate(-50%,-50%);

}
.btn1{
    height: 40PX;
    width: 150PX;
    border: 1px solid black;
    border-radius: 10PX;
    color: aliceblue;
    font-weight: 600;
    color: black;
    background-color: transparent;
    cursor: pointer;
   


}
.btn button:hover{
    background-color: #222;
    color: #fff;
}
.nav{
    width: 100%;
    height: 45px;
    background-color: rgba(0, 0, 0, 0.322);
    backdrop-filter:blur(5px);
    color: #fff;
    font-size: 5vh;
}
.nav h6{
    padding: 10px;
}
.container2 h1{
    font-family: "Dancing Script", cursive;
    font-weight: 700;
    font-optical-sizing: auto;
    font-style: normal;
    font-size: 15vh;
    text-align: center;
    padding-top: 100px;
}


</style>
</head>
<body>
    <div class="nav">
        <h6> Student Management System</h6>
    </div>
    <div class="container2">
        <h1>Student Management System</h1>
    </div>
    <div class="container1">
        <div class="btn">
            <a href="login.jsp"><button class="btn1">Add Student</button></a>

        </div>
        <div class="btn">
            <a href="welcome.jsp"><button class="btn1">View Students Details</button></a>

        </div>
        <div class="btn">
           <a href="studentmarksregister.jsp"> <button class="btn1">Add Student Marks</button></a>

        </div>
        <div class="btn">
            <a href="studentsmarks.jsp"><button class="btn1">View Student Marks</button></a>

        </div>
    </div>
    
</body>
</html>
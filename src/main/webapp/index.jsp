<%@ page import="app.entities.DataBase" %>
<%@ page import="java.sql.ResultSet" %>
<%@ page import="java.sql.SQLException" %>
<%@ page import="static app.entities.DataBase.deleteAllData" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>MAIN</title>
    <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
</head>

<body class="w3-black">
<div class="w3-container w3-animate-opacity w3-right-align">
    <h3> <button class="w3-btn w3-hover-red w3-dark-gray w3-round-large" onclick="location.href='/'">MAIN</button> </h3>

</div>

<div class="w3-container w3-center">
    <div class="w3-container w3-animate-opacity w3-center w3-black">
        <h3> <button class="w3-btn w3-hover-light-blue w3-round-large" onclick="location.href='/list'"> SHOW LIST OF USERS</button> </h3>
        <h3> <button class="w3-btn w3-hover-light-blue w3-round-large" onclick="location.href='/add'">ADD NEW USER</button> </h3>
        <h3> <button class="w3-btn w3-hover-light-blue w3-round-large" onclick="location.href='/edit'">EDIT USER DATA</button> </h3>
        <h3> <button class="w3-btn w3-hover-light-blue w3-round-large" onclick="location.href='/info'">CONTACT INFO</button> </h3>
    </div>
</div>

</body>
</html>
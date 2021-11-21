<%@ page import="app.entities.DataBase" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>ADD NEW USER</title>
    <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
</head>

<body class="w3-black">
<div class="w3-container w3-animate-opacity w3-right-align">
    <h3>
        <button class="w3-btn w3-dark-grey w3-hover-red w3-round-large" onclick="location.href='/'">BACK TO MAIN
        </button>
    </h3>

</div>

<div class="w3-container w3-padding">
    <%
        String username = (String) request.getAttribute("userName");
        boolean flag = DataBase.containsUser(username);
        if (!flag) {
            out.println("<div class=\"w3-panel w3-green w3-display-container w3-card-4 w3-round\">\n" +
                    "   <span onclick=\"this.parentElement.style.display='none'\"\n" +
                    "   class=\"w3-button w3-margin-right w3-display-right w3-round-large w3-hover-green w3-border w3-border-green w3-hover-white\">X</span>\n" +
                    "   <h5>User '" + username + "' added!</h5>\n" +
                    "</div>");
        }
        if (username != null) {
            out.println("<div class=\"w3-panel w3-green w3-display-container w3-card-4 w3-round\">\n" +
                    "   <span onclick=\"this.parentElement.style.display='none'\"\n" +
                    "   class=\"w3-button w3-margin-right w3-display-right w3-round-large w3-hover-green w3-border w3-border-green w3-hover-white\">X</span>\n" +
                    "   <h5>User '" + username + "'already exists!</h5>\n" +
                    "</div>");
        }
    %>
    <div class="w3-card-4">
        <div class="w3-container w3-round-large w3-center w3-light-blue">
            <h3>ADD USER</h3>
        </div>
        <form method="post" class="w3-selection w3-centered w3-black w3-padding">
            <label>Name:
                <input type="text" name="name" class="w3-input w3-animate-input w3-border-dark-gray w3-round-large"
                       style="width: 30%"><br/>
            </label>
            <label>Password:
                <input type="password" name="pass" class="w3-input w3-animate-input w3-border w3-round-large"
                       style="width: 30%"><br/>
            </label>
            <button type="submit" class="w3-btn w3-hover-green w3-dark-gray w3-round-large w3-margin-bottom">SUBMIT
            </button>
        </form>
    </div>
</div>
</body>
</html>
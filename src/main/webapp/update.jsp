<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>UPDATE</title>
    <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
</head>
<body class="w3-black">
<div class="w3-container w3-animate-opacity w3-right-align">
    <h3> <button class="w3-btn w3-hover-red w3-dark-gray w3-round-large" onclick="location.href='/'">BACK TO MAIN</button> </h3>

</div>

<div class="w3-container w3-padding">
        <%
        if (request.getAttribute("username") != null) {
            out.println("<div class=\"w3-panel w3-green w3-display-container w3-card-4 w3-round\">\n" +
                    "   <span onclick=\"this.parentElement.style.display='none'\"\n" +
                    "   class=\"w3-button w3-margin-right w3-display-right w3-round-large w3-hover-green w3-border w3-border-green w3-hover-white\">X</span>\n" +
                    "   <h5>Deleted all data for '" + request.getAttribute("username") +"'</h5>\n" +
                    "</div>");
        }
    %>

    <div class="w3-card-4">
        <div class="w3-container w3-round-large w3-center w3-light-blue">
            <h3>DELETE USER DATA</h3>
        </div>
        <form method="post" class="w3-selection w3-centered w3-black w3-padding">
            <label>Old username:
                <input type="text" name="old_username" class="w3-input w3-animate-input w3-border-dark-gray w3-round-large" style="width: 30%"><br />
            </label>
            <label>Old password:
                <input type="password" name="old_password" class="w3-input w3-animate-input w3-border w3-round-large" style="width: 30%"><br />
            </label>
        </form>

        <form method="post" class="w3-selection w3-centered w3-black w3-padding">
            <label>New username:
                <input type="text" name="new_username" class="w3-input w3-animate-input w3-border-dark-gray w3-round-large" style="width: 30%"><br />
            </label>
            <label>New password:
                <input type="password" name="new_password" class="w3-input w3-animate-input w3-border w3-round-large" style="width: 30%"><br />
            </label>
            <button type="submit" class="w3-btn w3-hover-green w3-dark-gray w3-round-large w3-margin-bottom">SUBMIT</button>
        </form>
    </div>

</body>
</html>


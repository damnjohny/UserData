<%@ page import="java.util.List" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>USERS LIST</title>
    <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
</head>

<body class="w3-black">
<div class="w3-container w3-animate-opacity w3-right-align">
    <h3> <button class="w3-btn w3-dark-grey w3-hover-red w3-round-large" onclick="location.href='/'">BACK TO MAIN</button> </h3>

</div>
<div class="w3-container w3-center w3-margin-bottom w3-padding">
    <div class="w3-card-4">
        <div class="w3-container w3-round-large w3-light-blue">
            <h3>USERS LIST</h3>
        </div>
        <%
            // main problem here !!!!!
            List<String> names = (List<String>) request.getAttribute("userNames");
            List<String> passwords = (List<String>) request.getAttribute("passwords");

            if (names != null && !names.isEmpty()) {
                out.println("<ul class=\"w3-ul\">");
                for (int i = 0; i < names.size(); i++) {

                    // problem here !!!
                    out.println("<li class=\"w3-hover-dark-grey w3-border-black w3-round-large w3-black\">" + names.get(i) + " " + passwords.get(i) + "</li>");
                }

            } else out.println("<div class=\"w3-panel w3-red w3-display-container w3-card-4 w3-round\">\n"
                    +
                    "   <span onclick=\"this.parentElement.style.display='none'\"\n" +
                    "   class=\"w3-button w3-margin-right w3-display-right w3-round-large w3-hover-white w3-red\">×</span>\n" +
                    "   <h5>THERE ARE NO USERS YET!</h5>\n" +
                    "</div>");

            names.clear();
            passwords.clear();
        %>
    </div>
</div>
</body>
</html>
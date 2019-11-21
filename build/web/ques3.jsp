<%-- 
    Document   : ques3
    Created on : 21-Nov-2019, 9:38:48 pm
    Author     : himan
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <form action="ques3.jsp">
            Name: <input type="text" name="name" /><br>
            DOB: <input type="date" name="date" /><br>
            EmailID: <input type="email" name="email" /><br>
            LuckyNumber: <input type="number" name="lucky" /><br>
            Favorite Food: <input type="text" name="fav" /><br>
            <input type="submit" /><br>
        </form>
        <%!
            public boolean isNullOrEmpty(String str) {
                if (str != null && !str.isBlank()) {
                    return false;
                }
                return true;
            }
        %>
        <%
            String name = request.getParameter("name");
            String dob = request.getParameter("date");
            String email = request.getParameter("email");
            String lucky = request.getParameter("lucky");
            String fav = request.getParameter("fav");
            if (isNullOrEmpty(name) || isNullOrEmpty(dob) || isNullOrEmpty(email) || isNullOrEmpty(lucky) || isNullOrEmpty(fav)) {
                
            }
            else {
                out.println("Name: " + name + "<br>");
                out.println("DOB: " + dob + "<br>");
                out.println("Email: " + email + "<br>");
                out.println("Lucky Number: " + lucky + "<br>");
                out.println("Favorite Food: " + fav + "<br>");
            }
        %>
    </body>
</html>

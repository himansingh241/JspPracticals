<%-- 
    Document   : ques1a
    Created on : 21-Nov-2019, 9:01:05 pm
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
        <form action="ques1a.jsp">
            Enter a Number: <input type="number" name="n"><br>
            <input type="submit" />
        </form>
        <%
            if (request.getParameter("n") != null) {
                int n = Integer.parseInt(request.getParameter("n"));
                for (int i = 0; i <= n; i++) {
                    for (int j = 1; j <= i; j++) {
                        out.println(j);
                    }
                    out.println("<br>");
                }
            }
        %>
    </body>
</html>

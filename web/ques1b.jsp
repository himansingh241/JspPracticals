<%-- 
    Document   : ques1b
    Created on : 21-Nov-2019, 9:14:44 pm
    Author     : himan
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
        <c:forEach var="i" begin="1" end="${n}" >
            <c:forEach begin="1" var="j" end="${i}" >
                <c:out value="${j}" />
            </c:forEach>
        </c:forEach>
    </body>
</html>

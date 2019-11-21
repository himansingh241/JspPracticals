<%-- 
    Document   : ques10a
    Created on : 21-Nov-2019, 11:07:38 pm
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
        <c:set var="name" value="${param.name}" scope="session"/>
        <h1>Hello ${name}</h1>
        <form action="ques10b.jsp">
            Product Name: <input type="text" name="product"/><br>
            <input type="submit"/>
        </form>
    </body>
</html>

<%-- 
    Document   : operate
    Created on : 21-Nov-2019, 9:22:13 pm
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
        <c:choose>
            <c:when test="${param.opr == 'add'}">
                Result: ${param.n1 + param.n2}
            </c:when>
            <c:when test="${param.opr == 'sub'}">
                Result: ${param.n1 - param.n2}
            </c:when>
            <c:when test="${param.opr == 'mul'}">
                Result: ${param.n1 * param.n2}
            </c:when>
            <c:otherwise>
                Select an option
            </c:otherwise>
        </c:choose>
    </body>
</html>

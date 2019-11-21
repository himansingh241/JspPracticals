<%-- 
    Document   : ques4
    Created on : 21-Nov-2019, 9:56:40 pm
    Author     : himan
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <form action="ques4.jsp">
            Name: <input type="text" name="name"/><br>
            <input type="submit"/><br>
        </form>
        <c:if test="${param.name != null}">
            <jsp:useBean id="date" class="java.util.Date"/>
            <fmt:formatDate var="time" value="${date}" pattern="HH" />
            <c:choose>
                <c:when test="${time >= 5 && time <= 12}">
                    Good Morning 
                </c:when>
                <c:when test="${time >12 && time <= 17}">
                    Good Afternoon 
                </c:when>
                <c:when test="${time >17 && time <= 21}">
                    Good Afternoon 
                </c:when>
                <c:otherwise>
                    Good Night 
                </c:otherwise>
            </c:choose> 
            ${param.name}
        </c:if>
    </body>
</html>

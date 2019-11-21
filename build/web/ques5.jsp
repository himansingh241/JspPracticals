<%-- 
    Document   : ques5
    Created on : 21-Nov-2019, 10:15:40 pm
    Author     : himan
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <form action="ques5.jsp">
            Word: <input type="text" name="word"/><br>
            <input type="radio" name="select" value="odd"/> Odd<br>
            <input type="radio" name="select" value="even"/> Even<br>
            <input type="submit"/>
        </form>
        <c:if test="${param.word != null}">
            <c:set var="word" value="${param.word}"/>
            <c:set var="flag" value="true"/>
            <c:set var="vowel" value="aeiou"/>
            <c:choose>
                <c:when test="${param.select == 'odd'}">
                    <c:forEach begin="1" end="${fn:length(word) - 1}" step="2" var="i">
                        <c:if test="${!fn:containsIgnoreCase(vowel, word.charAt(i))}">
                            <c:set var="flag" value="false"/>
                            <c:set var="i" value="${fn:length(word)}"/>
                        </c:if>
                    </c:forEach>
                </c:when>
                <c:when test="${param.select == 'even'}">
                    <c:forEach begin="0" end="${fn:length(word) - 1}" step="2" var="i">
                        <c:if test="${!fn:containsIgnoreCase(vowel, word.charAt(i))}">
                            <c:set var="flag" value="false"/>
                            <c:set var="i" value="${fn:length(word)}"/>
                        </c:if>
                    </c:forEach>
                </c:when>
                <c:otherwise>
                    
                </c:otherwise>
            </c:choose>
                <c:if test="${flag}">
                    You Win
                </c:if>
                <c:if test="${!flag}">
                    You Loose
                </c:if>
        </c:if>
    </body>
</html>

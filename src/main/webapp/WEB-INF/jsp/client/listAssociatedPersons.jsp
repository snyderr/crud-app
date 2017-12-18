<%--
  Created by IntelliJ IDEA.
  User: Ryan
  Date: 12/16/2017
  Time: 7:52 PM
  To change this template use File | Settings | File Templates.
--%>

<%@taglib prefix='c' uri='http://java.sun.com/jsp/jstl/core' %>
<%@taglib prefix='fn' uri='http://java.sun.com/jsp/jstl/functions'%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
"http://www.w3.org/TR/html4/loose.dtd">

<html>
<head>
    <title>Associated Persons</title>
</head>
<body>
    <a class="pure-button" href="${pageContext.request.contextPath}/client/list">View Clients</a></p>
    <h1>Associated Persons</h1>
    <c:choose>
        <c:when test="${fn:length(persons) gt 0}">
            <table>
                <thead>
                <tr>
                    <th>First Name</th>
                    <th>Last Name</th>
                    <th>Email Address</th>
                    <th>Actions</th>
                </tr>
                </thead>
                <tbody>
                <c:forEach items="${persons}" var="person">
                    <tr>
                        <td>${person.firstName}</td>
                        <td>${person.lastName}</td>
                        <td>${person.emailAddress}</td>
                        <td><a href="${pageContext.request.contextPath}/person/edit/${person.personId}">Edit Person</a></td>
                    </tr>
                </c:forEach>
                </tbody>
            </table>
            <p><a href="${pageContext.request.contextPath}/person/create">Create New Person</a></p>
        </c:when>
        <c:otherwise>
            <p>No results found.</p>
        </c:otherwise>
    </c:choose>
</body>
</html>

<%--
  Created by IntelliJ IDEA.
  User: Ryan
  Date: 12/17/2017
  Time: 7:43 PM
  To change this template use File | Settings | File Templates.
--%>
<%@taglib prefix='c' uri='http://java.sun.com/jsp/jstl/core' %>
<%@taglib prefix='fn' uri='http://java.sun.com/jsp/jstl/functions'%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
"http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <title>Associated Client</title>
</head>
<body>

    <a href="${pageContext.request.contextPath}/person/list">View Persons</a>
    <c:choose>
        <c:when test="${fn:length(clients.name) gt 0}">
            <table>
                <thead>
                <tr>
                    <th>Name</th>
                    <th>URI</th>
                    <th>Phone Number</th>
                </tr>
                </thead>
                <tbody>
                    <tr>
                        <td>${clients.name}</td>
                        <td>${clients.uri}</td>
                        <td>${clients.phoneNumber}</td>
                    </tr>
                </tbody>
            </table>
        </c:when>
        <c:otherwise>
            <p>No results found.</p>
        </c:otherwise>
    </c:choose>

</body>
</html>

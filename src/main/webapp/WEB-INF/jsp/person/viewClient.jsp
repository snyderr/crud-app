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
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta.2/css/bootstrap.min.css" integrity="sha384-PsH8R72JQ3SOdhVi3uxftmaW6Vc51MKb0q5P2rRUpPvrszuE4W1povHYgTpBfshb" crossorigin="anonymous">
    <title>Associated Client</title>
</head>
<style>
    .table-holder{
        margin: 0px auto;
        width: 80%;
    }
    h1 {
        margin: 0px auto;
        text-align: center;
        top: 50px;
        padding-bottom: 50px;
    }
    .action{
        padding-right: 50px;
    }
    td, th {
        text-align: center;
        vertical-align: middle;
    }
    .center{
        text-align: center;
        vertical-align: middle;
    }
</style>
<body>
<p class="center"><a href="${pageContext.request.contextPath}/person/list">View Persons</a></p>
    <c:choose>
        <c:when test="${fn:length(clients.name) gt 0}">
            <div class="table-holder">
                <table class="table table-bordered">
                    <thead class="table table-bordered">
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
            </div>
        </c:when>
        <c:otherwise>
            <p class="center">No results found.</p>
        </c:otherwise>
    </c:choose>

</body>
</html>

<%-- 
    Document   : edit
    Created on : Apr 22, 2011, 3:04:46 PM
    Author     : FMilens
--%>

<%@taglib prefix='c' uri='http://java.sun.com/jsp/jstl/core' %>
<%@taglib prefix='fn' uri='http://java.sun.com/jsp/jstl/functions'%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
    "http://www.w3.org/TR/html4/loose.dtd">

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <script src="//ajax.googleapis.com/ajax/libs/jquery/1.10.2/jquery.min.js"></script>
        <script src="//cdnjs.cloudflare.com/ajax/libs/jquery-form-validator/2.3.26/jquery.form-validator.min.js"></script>
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta.2/css/bootstrap.min.css" integrity="sha384-PsH8R72JQ3SOdhVi3uxftmaW6Vc51MKb0q5P2rRUpPvrszuE4W1povHYgTpBfshb" crossorigin="anonymous">
        <title>Edit Client</title>
    </head>
    <style>
        form {
            margin: 0 auto;
            width: 300px;
        }


        input{
            width:300px;
        }

        h1 {
            margin: 0 auto;
            text-align: center;
            top: 50px;
            padding-bottom: 50px;
        }

        button{
            height:20px;
            width:100px;
            margin: -20px -50px;
            position:relative;
            top:50%;
            left:50%;
        }
        .center{
            text-align: center;
            vertical-align: middle;
        }
    </style>
    <body>
        <p class="center"><a class="pure-button" href="${pageContext.request.contextPath}/client/list">View Clients</a></p>
        <h1>Edit Client</h1>
        <c:if test="${fn:length(errors) gt 0}">
            <p>Please correct the following errors in your submission:</p>
            <ul>
                <c:forEach items="${errors}" var="error">
                    <li>${error}</li>
                </c:forEach>
            </ul>
        </c:if>
        <form action="${pageContext.request.contextPath}/client/edit" method="POST">
            <input type="hidden" class = "form-control" name="clientId" value="${client.clientId}"/>
            <div class="center">
                <a style="text-align: center"href="${pageContext.request.contextPath}/client/listAssociatedPersons/${client.clientId}">Edit/View Associated Persons</a>
            </div>
            <div class="form-group">
                <label for="name">Client Name:</label>
                <input type="text" class = "form-control" required = "required" data-validation="length" data-validation-length="1-50" name="name" value="${client.name}"/>
            </div>
            <div class="form-group">
                <label for="uri">URI:</label>
                <input type="text" class="form-control" required = "required" data-validation="length" data-validation-length="1-50" name="uri" value="${client.uri}"/>
            </div>
            <div class="form-group">
                <label for="phoneNumber">Phone Number:</label>
                <input type="text" class="form-control" required = "required" data-validation="length number" data-validation-length="1-50" name="phoneNumber" value="${client.phoneNumber}"/>
            </div>
            <div class="form-group">
                <label for="streetAddress">Street Address:</label>
                <input type="text" class="form-control" required = "required" data-validation="length" data-validation-length="1-50" name="streetAddress" value="${client.streetAddress}"/>
            </div>
            <div class="form-group">
                <label for="city">City:</label>
                <input type="text" class="form-control" required = "required" required = "required" data-validation="length" data-validation-length="1-50" name="city" value="${client.city}"/>
            </div>
            <div class="form-group">
                <label for="state">State:</label>
                <input type="text" class="form-control" required = "required" required = "required" data-validation="length" data-validation-length="2"  name="state" value="${client.state}"/>
            </div>
            <div class="form-group">
                <label for="zipCode">Zip Code:</label>
                <input type="text" class="form-control" required = "required" data-validation="length number" data-validation-length="5" name="zipCode" value="${client.zipCode}"/>
            </div>
            <div class="form-group">
                <input type="submit" class="form-group btn btn-primary" name="Submit" value="Submit"/>
            </div>
        </form>
    </body>
    <script>
        $.validate({
            modules : 'html5'
        });
    </script>
</html>

<%-- 
    Document   : create
    Created on : Apr 22, 2011, 3:24:13 PM
    Author     : FMilens
--%>

<%@taglib prefix='c' uri='http://java.sun.com/jsp/jstl/core' %>
<%@taglib prefix='fn' uri='http://java.sun.com/jsp/jstl/functions'%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
    "http://www.w3.org/TR/html4/loose.dtd">


<html>
    <head>
        <script src="//ajax.googleapis.com/ajax/libs/jquery/1.10.2/jquery.min.js"></script>
        <script src="//cdnjs.cloudflare.com/ajax/libs/jquery-form-validator/2.3.26/jquery.form-validator.min.js"></script>
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta.2/css/bootstrap.min.css" integrity="sha384-PsH8R72JQ3SOdhVi3uxftmaW6Vc51MKb0q5P2rRUpPvrszuE4W1povHYgTpBfshb" crossorigin="anonymous">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Create Person</title>

        <style>
            form {
                margin: 0 auto;
                width:300px;
            }

            form div{
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
        </style>
    </head>
    <body>
        <h1>Create Person</h1>
        <c:if test="${fn:length(errors) gt 0}">
            <p>Please correct the following errors in your submission:</p>
            <ul>
                <c:forEach items="${errors}" var="error">
                    <li>${error}</li>
                </c:forEach>
            </ul>
        </c:if>
        <form action="${pageContext.request.contextPath}/person/create" method="POST">
            <div class="form-group">
                <label for="clientId">Associated Client:</label>
                <select class="form-control" path="clientId" name="clientId">
                    <c:forEach items="${clients}" var = "client">
                            <option value = "${client.clientId}">${client.name}</option>
                    </c:forEach>
                </select>
            </div>
            <div class="form-group">
                <label for="firstName">First Name:</label>
                <input type="text" class = "form-control" required = "required" data-validation="length" data-validation-length="1-50" name="firstName" value="${person.firstName}"/>
            </div>
            <div class="form-group">
            <label for="lastName">Last Name:</label>
                <input type="text" class="form-control" required = "required" data-validation="length" data-validation-length="1-50" name="lastName" value="${person.lastName}"/>
            </div>
            <div class="form-group">
                <label for="emailAddress">Email Address:</label>
                <input type="text" class="form-control" required = "required" data-validation="length email" data-validation-length="1-50" name="emailAddress" value="${person.emailAddress}"/>
            </div>
            <div class="form-group">
                <label for="streetAddress">Street Address:</label>
                <input type="text" class="form-control" required = "required" data-validation="length" data-validation-length="1-50" name="streetAddress" value="${person.streetAddress}"/>
            </div>
            <div class="form-group">
                <label for="city">City:</label>
                <input type="text" class="form-control" required = "required" required = "required" data-validation="length" data-validation-length="1-50" name="city" value="${person.city}"/>
            </div>
            <div class="form-group">
                <label for="state">State:</label>
                <input type="text" class="form-control" required = "required" required = "required" data-validation="length" data-validation-length="2-2"  name="state" value="${person.state}"/>
            </div>
            <div class="form-group">
                <label for="zipCode">Zip Code:</label>
                <input type="text" class="form-control" required = "required" data-validation="length number" data-validation-length="5-5" name="zipCode" value="${person.zipCode}"/>
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

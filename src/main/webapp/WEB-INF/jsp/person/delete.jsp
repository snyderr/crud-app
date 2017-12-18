<%-- 
    Document   : delete
    Created on : Apr 22, 2011, 3:55:55 PM
    Author     : FMilens
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta.2/css/bootstrap.min.css" integrity="sha384-PsH8R72JQ3SOdhVi3uxftmaW6Vc51MKb0q5P2rRUpPvrszuE4W1povHYgTpBfshb" crossorigin="anonymous">
        <title>Delete Person</title>
    </head>
    <style>
        h1 {
            margin: 0px auto;
            text-align: center;
            top: 50px;
            padding-bottom: 50px;
        }
        .center{
            text-align: center;
            vertical-align: middle;
        }
        form {
            margin: 0 auto;
            width: 300px;
            }
        button{
            width: 100px;
            padding-right: 20px;
        }
    </style>
    <body>
    <p class="center"><a class="pure-button" href="${pageContext.request.contextPath}/client/list">View Clients</a></p>
        <h1>Delete Person</h1>
        <p class="center">You are about to delete the person ${person.firstName} ${person.lastName}:  Are you sure?</p>
        <form action="${pageContext.request.contextPath}/person/delete" method="post">
                <input type="hidden" name="personId" value="${person.personId}"/>
            <div class="text-center">
                <div class="btn-group">
                    <input type="submit" class ="form-control btn btn-primary" name="command" value="Cancel"/>
                    <input type="submit" class="form-control btn btn-danger" name="command" value="Delete"/>
                </div>
            </div>
        </form>
    </body>
</html>

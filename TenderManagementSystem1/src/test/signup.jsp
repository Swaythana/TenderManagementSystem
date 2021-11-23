<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%@taglib prefix="f" uri="http://www.springframework.org/tags/form" %>
<h2 style="margin-top: 170px;"><center> SignUp </center></h2>
<body bgcolor="cyan">
        <f:form action="home" method="post" modelAttribute="logData">
        <center>
        <div>
            <table style="margin-left:auto;margin-right:auto;">
                <center>
                    <tr><td><br></td></tr>
                <tr>
                <td class="al"><label>Name:</label></td>
                <td><f:input path="username" /> <f:errors path="username" class="er"/><br></td>
                </tr>
                <tr><td><br></td></tr>
                <tr>
                <td><label class="al">Password:</label></td>
                <td><f:input type="password" path="password" /> <f:errors path="password" class="er"/></td> 
                </tr>
</body>
</html>
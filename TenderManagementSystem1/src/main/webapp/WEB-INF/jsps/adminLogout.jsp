<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<%
response.setHeader("Cache-Control","no-cache,no-store,must-revalidate");
response.setHeader("Pragma","no-cache");
response.setDateHeader ("Expires", 0); //prevents caching at the proxy server
%>
<meta charset="ISO-8859-1">
<title>Logout</title>
<link href="bootstrap.min.css" rel="stylesheet" />
</head>
<body bgcolor="#C0C0C0">
<center>
<br>
<br>
<br>
<br>
<h3 style="color:lightgray">Logged out Successfully</h3>
<br>
<a href="adminlogin"class="btn btn-danger">Login again</a>
</center>
</body>
<style>
        .al
        {
            font-size: 18px;
            font-family:Georgia, 'Times New Roman', Times, serif;
        }
        div {
            text-align: center;
            margin: 30px;
            width: 500px; height: 500px;
            background: rgba(105,105,105, 0.6) 
           

            }
        body
        {
        	background-image: url('tender18.jpg');
        	background-repeat: no-repeat;
 			background-attachment: fixed;
  			background-size: cover;
        	
        }
    </style>
</html>
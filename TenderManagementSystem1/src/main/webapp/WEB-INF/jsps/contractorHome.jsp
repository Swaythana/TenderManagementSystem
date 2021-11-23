<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
</head>
<body bgcolor="#C0C0C0">
<nav class="navbar navbar-inverse">
  <div class="container-fluid">
    <div class="navbar-header">
      <a class="navbar-brand" href="#">Contractor Portal</a>
    </div>
    <ul class="nav navbar-nav">
    	<li><a href="generateTender/${contractorData.conId }">Generate Tender</a></li>
      <li><a href="viewContractorTender/${contractorData.conId }">All Tenders</a></li>
      <li><a href="allBiddings/${contractorData.conId}">All Biddings</a></li>
      <li><a href="logout">Logout</a></li>
    </ul>
  </div>
</nav>
<h2><center><b>Welcome ${contractorData.conName }</b></center></h2>
<style>
 body
        {
        	background-image: url('banner.jpg');
        	background-repeat: no-repeat;
 			background-attachment: fixed;
  			background-size: cover;
        	
        }
</style>
</body>
</html>
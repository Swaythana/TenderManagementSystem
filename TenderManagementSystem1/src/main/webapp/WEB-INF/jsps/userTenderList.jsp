<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
</head>
<body style="background-color:#C0C0C0 ;">

<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<br>
<br>
<h1 align="center">All Tender Details </h1>
<br>
<hr>

<table class="table">
  <thead>
    <tr class="table-dark">
      <th scope="col">Tender Id</th>
      <th scope="col">Tender Name</th>
      <th scope="col">Tender Desc</th>
      <th scope="col">Contractor Id</th>
      <th scope="col">Contractor Name</th>
       <th scope="col">Base Price</th>
       <th scope="col">Deadline</th>

    </tr>
  </thead>
  <tbody>
  
  <c:forEach var="dt" items="${tenderListData }">
    
    <tr class="table-light">
      <th scope="row"><c:out value="${dt.tenderId }"></c:out></th>
      <td><c:out value="${dt.tenderName }"></c:out> </td>
      <td><c:out value="${dt.tenderDesc }"></c:out> </td>
   	  <td><c:out value="${dt.conId }"></c:out> </td>
   	  <td><c:out value="${dt.conName }"></c:out> </td>
   	  <td><c:out value="${dt.basePrice }"></c:out> </td>
      <td><c:out value="${dt.deadline }"></c:out> </td>
   	  <td> <a class="btn btn-success" id="1" href="/registerTender/${td.sid }/${td.susername }/${dt.tenderId }/${dt.basePrice }">Register</a> </td>
    </tr>
    
    </c:forEach>
    
    
  </tbody>
    
  </table>
<script>
$("#1").on("click", function() {
    $(this).prop("disabled", true);
});</script>
</body>
</html>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link href="bootstrap.min.css" rel="stylesheet" />
<style type="text/css">
.er {
	color: red;
}
</style>
</head>
<body>
	<%@taglib prefix="f" uri="http://www.springframework.org/tags/form"%>
	<h1><br></h1>
	<h3 align="center" style="color:white">Contractor Registration Screen</h3>

	<f:form action="registertender" method="post"
		modelAttribute="tenData">
		<center>
			<div>
				<table style="margin-left: auto; margin-right: auto;">
					<center>
						<tr>
							<td><br></td>
						</tr>
					<tr>
						<td><label style="color:lightgray" class="al">Tender Name</label></td>
						<td><f:input path="tenderName" /> <f:errors path="tenderName"
								class="er" /></td>
					</tr>
					<tr>
						<td><br></td>
					</tr>
					<tr>
						<td><label style="color:lightgray" class="al">Tender Desc</label></td>
						<td><f:input path="tenderDesc" /> <f:errors
								path="tenderDesc" class="er" /></td>
					</tr>
					<tr>
						<td><br></td>
					</tr>
					<tr>
						<td><label style="color:lightgray" class="al">Contractor Id</label></td>
						<td><f:input path="conId" readonly="true"  /> </td>
					</tr>
					<tr>
						<td><br></td>
					</tr>
					<tr>
						<td><label style="color:lightgray" class="al">Contractor UserName</label></td>
						<td><f:input path="conName" readonly="true"/> </td>
					</tr>
					<tr>
						<td><br></td>
					</tr>
					<tr>
						<td><label style="color:lightgray" class="al">Base Price</label></td>
						<td><f:input path="basePrice" /> <f:errors path="basePrice"
								class="er" /></td>
					</tr>
					<tr>
						<td><br></td>
					</tr>
					<tr>
						<td><label style="color:lightgray" class="al">Deadline</label></td>
						<td><f:input type="date" path="deadline" /> <f:errors
								path="deadline" class="er" /></td>
					</tr>
					<tr>
						<td><br></td>
					</tr>
					<tr>
						<td><button type="submit" class="btn btn-danger">Register</button></td>
						<td><button type="reset" class="btn btn-danger">Reset</button></td>
					</tr>
					</center>
				</table>
			</div>
		</center>

	</f:form>
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
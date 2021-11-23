<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link href="bootstrap.min.css" rel="stylesheet" />
<style type="text/css">
.er {
	color: red;
}
</style>
</head>
<body style="background-color:#463E3F ;">
	<%@taglib prefix="f" uri="http://www.springframework.org/tags/form"%>
	<h2 style="color:lightgray" align="center">Register Tender Screen</h2>

	<f:form action="registerTenderData" method="post"
		modelAttribute="tenderUserData">
		<center>
			<div>
				<table style="margin-left: auto; margin-right: auto;">
					<center>
						<tr>
							<td><br></td>
						</tr>
						<tr>
							<td class="al"><label style="color:lightgray">Tender Id :</label></td>
							<td><f:input path="tenderId" readonly="true" /></td>
						</tr>
						<tr>
							<td><br></td>
						</tr>
						<tr>
							<td><label style="color:lightgray" class="al">Tender Name:</label></td>
							<td><f:input path="tenderName" readonly="true" /></td>
						</tr>
						<tr>
							<td><br></td>
						</tr>
						<tr>
							<td class="al"><label style="color:lightgray"> Contractor Id :</label></td>
							<td><f:input path="conId" readonly="true" /></td>
						</tr>
						<tr>
							<td><br></td>
						</tr>
						<tr>
							<td><label style="color:lightgray" class="al">Contractor UserName:</label></td>
							<td><f:input path="conName" readonly="true" /></td>
						</tr>
						<tr>
							<td><br></td>
						</tr>
						<tr>
							<td><label style="color:lightgray" class="al">Your UserId:</label></td>
							<td><f:input path="userId" readonly="true" /></td>
						</tr>
						<tr>
							<td><br></td>
						</tr>
						<tr>
							<td><label style="color:lightgray" class="al">Your UserName:</label></td>
							<td><f:input path="userName" readonly="true" /></td>
						</tr>
						<tr>
							<td><br></td>
						</tr>
						<tr>
							<td><label style="color:lightgray" class="al">BidPrice:</label></td>
							<td><f:input path="bidPrice" type="number" min="${bidPrice }"/>
								</td>
						</tr>
						<tr>
							<td><br></td>
						</tr>
						<tr>
							<td><button type="submit" class="button">Register</button></td>
							<td><button type="reset" class="button">Reset</button></td>
						</tr>
					</center>
				</table>
			</div>
		</center>

	</f:form>
</body>
<style>
 .button {
  background-color: #E55451; /* Green */
  border: none;
  color: white;
  padding: 15px 32px;
  text-align: center;
  text-decoration: none;
  display: inline-block;
  font-size: 16px;
}
        .al
        {
            font-size: 18px;
            font-family:Georgia, 'Times New Roman', Times, serif;
        }
        div {
            text-align: center;
            margin: 30px;
            width: 500px; height: 450px;
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
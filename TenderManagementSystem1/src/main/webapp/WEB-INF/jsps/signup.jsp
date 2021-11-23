<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Signup</title>
<link href="bootstrap.min.css" rel="stylesheet"/> 
<style>
.er{
color: red;

}
</style>
</head>
<body>
<%@taglib prefix="f" uri="http://www.springframework.org/tags/form" %>
<br>
<br>
<h2 style="color:lightgray" style="margin-top: 170px;"><center> SignUp </center></h2>
<body bgcolor="cyan">
        <f:form action="signupdata" method="post" modelAttribute="signData">
        <center>
        <div>
            <table style="margin-left:auto;margin-right:auto;">
                <center>
                    <tr><td><br></td></tr>
                <tr>
                <td class="al"><label style="color:lightgray">Name:</label></td>
                <td><f:input path="name" /> <f:errors path="name" class="er"/><br></td>
                </tr>
                <tr><td><br></td></tr>
                <tr>
                <td><label style="color:lightgray" class="al">Job Role:</label></td>
                <td><f:input path="jobrole" /> <f:errors path="jobrole" class="er"/></td> 
                </tr>
                <tr><td><br></td></tr>
                <tr>
                <td class="al"><label style="color:lightgray">Gender:</label></td>
                <td><f:radiobutton path="gender" value="male"/>Male
                <f:radiobutton path="gender" value="female"/>Female
                <f:errors path="gender" class="er"/>
                </td>
                <tr><td><br></td></tr>
                <tr>
                <td><label style="color:lightgray" class="al">Age:</label></td>
                <td><f:input path="age" /> <f:errors path="age" class="er"/></td> 
                </tr>
                <tr><td><br></td></tr>
                <tr>
                <td><label style="color:lightgray" class="al">Email:</label></td>
                <td><f:input path="email" /> <f:errors path="email" class="er"/></td> 
                </tr>
                <tr><td><br></td></tr>
                <tr>
                <td><label style="color:lightgray" class="al">Phone No:</label></td>
                <td><f:input path="phoneno" /> <f:errors path="phoneno" class="er"/></td> 
                </tr>
                <tr><td><br></td></tr>
                <tr>
                <td><label style="color:lightgray" class="al">Username:</label></td>
                <td><f:input path="susername" /> <f:errors path="susername" class="er"/></td> 
                </tr>
                <tr><td><br></td></tr>
                <tr>
                <td><label style="color:lightgray" class="al">Password:</label></td>
                <td><f:input type="password" path="pwd" /> <f:errors path="pwd" class="er"/></td> 
                </tr>
                <tr><td><br></td></tr>
                <tr>
                <td><button type="submit" class="btn btn-danger">Login</button></td>
                <td><button type="reset" class="btn btn-danger">Reset</button></td>
                </tr>
                <tr><td><br></td></tr>
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
            width: 500px; height: 600px;
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
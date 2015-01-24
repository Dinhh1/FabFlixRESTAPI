<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="cs122b.DB.*, cs122b.Models.*, java.util.ArrayList"
 %>
    
<!--
Author: W3layouts
Author URL: http://w3layouts.com
License: Creative Commons Attribution 3.0 Unported
License URL: http://creativecommons.org/licenses/by/3.0/
-->
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<link href="css/style.css" rel='stylesheet' type='text/css' />
<meta name="viewport" content="width=device-width, initial-scale=1">

<script src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/js/bootstrap.min.js"></script>
<!--webfonts-->
<link href='http://fonts.googleapis.com/css?family=Oxygen:400,300,700|Open+Sans:400,300,600,700' rel='stylesheet' type='text/css'>
<!--//webfonts-->
</head>
<%
String userName = request.getParameter("user_name");
String pswd = request.getParameter("password");
if (userName != null && userName.length() != 0 && pswd != null && pswd.length() != 0 ) {
	MovieDB db = new MovieDB();
	Customer c = db.Customers.authenticateUser(new Customer(null, null, null, null, userName, pswd));
	if (c != null ) {
		 %>
		   <script> alert("Successfully Logged in");</script>
		<%
	} else {
		 %>
		   <script> alert("Failed to authenticate User");</script>
		<%
	}
}

%> 
<body>
 
     <div class="container">  
		<div class="jumbotron" style="background-color:#CEECF5">
			<h1>FabFlix Rest Client Test</h1>
			<p>CS 122b</p>
		</div>
	</div>
	<div class="main">
		<div class="user">
			<img src="images/user.png" alt="">
		</div>
		<div class="login">
			<div class="inset">
				<!-----start-main---->
				<form action="index.jsp" method="POST">
			         <div>
						<span><label>Username</label></span>
						<span><input type="text" class="textbox" id="username" name="user_name"></span>
					 </div>
					 <div>
						<span><label>Password</label></span>
					    <span><input type="password" class="password" id="pswd" name="password"></span>
					 </div>
					<div class="sign">
						<div class="submit">
						  <input type="submit" onclick="login()" value="LOGIN" >
						</div>
						<span class="forget-pass">
							<a href="#">Forgot Password?</a>
						</span>
					</div>
					</form>
				</div>
			</div>
		<!-----//end-main---->
		</div>
</body>
</html>
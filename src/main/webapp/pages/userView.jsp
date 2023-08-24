
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>


<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<style>
body {
	background-image: url(Graduate.jpg);
	background-repeat: no-repeat;
	background-attachment: fixed;
	background-size: 100%;
}

.apply_box {
	max-width: 600px;
	padding: 20px;
	background-color: white;
	margin: 0 auto;
	margin-top: 50px;
	box-shadow: 2px 4px 5px rgba(1, 1, 1, 0.1);
	border-radius: 10px;
	border-color: black;
	
}

input {
	padding: 16px 10px;
	border: 1px solid #ccc;
	border-radius: 4px;
	font-size: 15px;
	text-align: center;
}

button {
	background-color: rgb(0, 47, 255);
	border: transparent;
	padding: 5px 1px;
	color: white;
	border-radius: 8px;
	transition: 0.3s ease-in;
}

input:focus {
	outline-color: rgb(38, 0, 255);
}

button:hover {
	background-color: #ccc;
	border: 2px solid rgb(0, 47, 255);
	color: black;
	cursor: pointer;
}

form input[type=text], textarea {
	border: 1px solid #ccc;
	border-radius: 4px;
	font-size: 15px;
	text-align: left;
	width: 100%;
	margin: 8px 0;
	padding: 6px 10px;
	display: inline-block;
	border: 2px solid;
	box-sizing: border-box;
	justify-content: center;
}

.container {
	margin-top: 20px; 
	display : grid;
	grid-template-columns: repeat(auto);
	display: grid;
	display: flex;
	justify-content: flex-start;
}


.button_container {
	display: flex;
	justify-content: flex-end;
	margin-top: 20px;
}
</style>
</head>
<body>


	<font color='green'>${msg}</font>
	<div class="container">
		<div align="center" class="apply_box">
			<form:form action="user" method="POST" modelAttribute="user">

				<h1 align="center">Registration Form</h1>
				<label> First Name : </label>
				<form:input type="text" path="fname" class="name" />
				<br />
				<label> Middle Name :</label>
				<form:input path="mname" class="name" />
				<br />
				<label> Last Name :</label>
				<form:input path="lname" class="name" />
				<br />
				<label>Email : </label>
				<form:input path="email" class="name" />
				<br />
				<label>Phone No :</label>
				<form:input path="phno" class="name" />
				<br />
				<label> Gender </label>
				<br />
	        Male:  <form:radiobutton value="male" path="gender" />

	        female: <form:radiobutton value="female" path="gender" />

				<br />
				<br />
				<label> Nationality:</label><br />
            Indian<form:radiobutton value="Indian" id="group1"
					path="nationality" class="name" />
            others<form:radiobutton value="other" id="group1"
					path="nationality" class="name" />
				<br />
				<br />
				<label> Religion :</label>
				<form:select path="religion">
					<form:option value="Hindu"></form:option>
					<form:option value="Musilm"></form:option>
					<form:option value="Christian"></form:option>
					<form:option value="Others"></form:option>
				</form:select>
				<br />
				<br />
				<br />
				<label> Language:</label>
				<form:select path="language" class="name">

					<form:option value="Select language"></form:option>
					<form:option value="Telugu"></form:option>
					<form:option value="English"></form:option>
					<form:option value="Hindi"></form:option>
					<form:option value="Tamil"></form:option>

				</form:select>
				<br />
				<br />
				<label> Address: </label>
				<br>
				<form:textarea path="address" class="name" cols="50" rows="5" />
				<br />
				<div class="button_container">
					<button type="Register" value="Register">Register</button>
				</div>
			</form:form>
		</div>
	</div>

</body>
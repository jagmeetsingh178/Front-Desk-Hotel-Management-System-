<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Hotel-Owner-Registration</title>

<style>
* {
	box-sizing: border-box;
	margin: 0;
	padding: 0;
}

body {
	font-family: 'Arial', sans-serif;
	display: flex;
	justify-content: center;
	align-items: center;
	height: 100vh;
	background: linear-gradient(to right, #6a11cb, #2575fc);
}

.container {
	background-color: #fff;
	padding: 30px;
	border-radius: 15px;
	box-shadow: 0 10px 25px rgba(0, 0, 0, 0.1);
	width: 100%;
	max-width: 400px;
	animation: fadeIn 1s ease-in-out;
}

form h2 {
	margin-bottom: 20px;
	text-align: center;
	font-size: 24px;
	color: #333;
	animation: slideIn 1s ease-in-out;
}

.form-group {
	margin-bottom: 20px;
	animation: slideIn 1s ease-in-out;
}

.form-group label {
	display: block;
	margin-bottom: 5px;
	font-weight: bold;
	color: #555;
}

.form-group input {
	width: 100%;
	padding: 10px;
	border: 1px solid #ccc;
	border-radius: 5px;
	font-size: 16px;
	transition: all 0.3s ease;
}

.form-group input:focus {
	border-color: #6a11cb;
	box-shadow: 0 0 5px rgba(106, 17, 203, 0.5);
	outline: none;
}

button {
	width: 100%;
	padding: 12px;
	background-color: #6a11cb;
	border: none;
	border-radius: 5px;
	color: white;
	font-size: 18px;
	cursor: pointer;
	transition: background-color 0.3s ease;
	animation: fadeIn 1s ease-in-out;
}

button:hover {
	background-color: #2575fc;
}
.text-center{
    padding: 20px;
}

@
keyframes fadeIn {from { opacity:0;
	
}

to {
	opacity: 1;
}

}
@
keyframes slideIn {from { transform:translateY(-20px);
	opacity: 0;
}

to {
	transform: translateY(0);
	opacity: 1;
}

}
@media ( max-width : 600px) {
	.container {
		width: 90%;
		padding: 20px;
	}
}
</style>
</head>
<body>

<%

	String msg = (String)request.getAttribute("msg");
%>

	<div class="container">
		<form action="hotelOwnerRegister" method="post">
			<h2>Register</h2>
			
			<%if(msg!=null) { %> <h3><%=msg %></h3><%} %>

			<div class="form-group">
				<label for="name">Name</label> <input type="text" id="name"
					name="name" required>
			</div>
			<div class="form-group">
				<label for="email">Email</label> <input type="email" id="email"
					name="email" required>
			</div>
			<div class="form-group">
				<label for="password">Password</label> <input type="password"
					id="password" name="password" required>
			</div>
			<div class="form-group">
				<label for="phone">Phone</label> <input type="tel" id="phone"
					name="phone" required>
			</div>
			<button type="submit">Register</button>

			<p class="text-center text-muted mt-5 mb-0">
				Have already an account? <a href="login-hotel-owner.jsp"
					class="fw-bold text-body"><u>Login here</u></a>
			</p>
		</form>
	</div>
</body>
</html>
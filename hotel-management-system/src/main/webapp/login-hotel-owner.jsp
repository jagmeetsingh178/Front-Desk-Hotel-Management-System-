<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
@charset "UTF-8";

* {
	margin: 0;
	padding: 0;
	box-sizing: border-box;
	font-family: Arial, sans-serif;
}

body {
	display: flex;
	justify-content: center;
	align-items: center;
	height: 100vh;
	background: linear-gradient(to right, #ff7e5f, #feb47b);
}

.container {
	display: flex;
	justify-content: center;
	align-items: center;
	width: 100%;
	padding: 20px;
}

.form-container {
	background: white;
	padding: 40px;
	border-radius: 10px;
	box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
	max-width: 400px;
	width: 100%;
	text-align: center;
	animation: fadeIn 1s ease-in-out;
	/* height: 400px; */
}

h1 {
	margin-bottom: 20px;
	color: #333;
}

.input-group {
	margin-bottom: 20px;
	text-align: left;
}

label {
	display: block;
	margin-bottom: 5px;
	color: black;
}

input {
	width: 100%;
	padding: 10px;
	border: 1px solid #ddd;
	border-radius: 5px;
	transition: border-color 0.3s;
}

input:focus {
	border-color: #ff7e5f;
}

button {
	background: #ff7e5f;
	color: white;
	padding: 10px 30px;
	border: none;
	border-radius: 5px;
	cursor: pointer;
	text-transform: uppercase;
	transition: background 0.3s;
}

button:hover {
	background: #feb47b;
	color: black;
	transform: scale(1.05);
}

.input-group>input:hover {
	transform: scale(1.1);
}

@
keyframes fadeIn {from { opacity:0;
	transform: translateY(-20px);
}

to {
	opacity: 1;
	transform: translateY(0);
}

}
@media ( max-width : 600px) {
	.form-container {
		padding: 20px;
	}
}
</style>
<!-- Font Awesome -->
<link
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css"
	rel="stylesheet" />
<!-- Google Fonts -->
<link
	href="https://fonts.googleapis.com/css?family=Roboto:300,400,500,700&display=swap"
	rel="stylesheet" />
<!-- MDB -->
<link
	href="https://cdnjs.cloudflare.com/ajax/libs/mdb-ui-kit/7.3.2/mdb.min.css"
	rel="stylesheet" />
</head>
<body>
	<%
	String msg = (String) request.getAttribute("msg");
	%>
	<div class="container">
		<div class="form-container">
			<h1>Hotel-Owner-Login</h1>
			<form action="hotelOwnerLogin" method="post">
				<%
				if (msg != null) {
				%>
				<h4 style="color: red">
					<%=msg%></h4>
				<%
				}
				%>
				<div class="input-group">
					<label for="email">Email</label> <input type="email" id="email"
						name="email" required placeholder="Enter Email">
				</div>
				<div class="input-group">
					<label for="password">Password</label> <input type="password"
						id="password" name="password" required
						placeholder="Enter Password">
				</div>

				<button type="submit">Login</button>
			</form>
		</div>
	</div>

</body>
</html>
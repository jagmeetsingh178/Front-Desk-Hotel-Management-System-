<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Add-Hotel-Details</title>

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
	margin-top: 20px;
}

button:hover {
	background-color: #2575fc;
}

.text-center {
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
	String msg = (String) request.getAttribute("msg");
	%>

	<div class="container">
		<form action="hotelRegister" method="post"
			enctype="multipart/form-data">
			<h2>ADD-HOTELS-DETAILS</h2>

			<%
			if (msg != null) {
			%>
			<h3><%=msg%></h3>
			<%
			}
			%>
			<div class="form-group">
				<label for="name">Hotel Name</label> <input type="text" id="name"
					name="name" required>
			</div>
			<div class="form-group">
				<label for="city">Hotel City</label> <input type="text" id="city"
					name="city" required>
			</div>
			<div class="form-group">
				<label for="address">Hotel Address</label> <input type="text"
					id="address" name="address" required>
			</div>
			<div class="form-group">
				<label for="phone">Hotel Price</label> <input type="number"
					id="price" name="price" required>
			</div>

			<input type="file" name="image">
			<button type="submit">ADD</button>


		</form>
	</div>
</body>
</html>
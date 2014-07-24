<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<center>
		<h1>JDBC Study App</h1>

		Register a movie
		<form action="AddMovieServlet">
			Movie ID <input type="text" name="movieid"> <br>Movie
			Title <input type="text" name="movietitle"> <br>Movie
			Budget <input type="text" name="moviebudget"> <br> <input
				type="submit">
		</form>


		<a href="FetchMovieServlet">Fetch All Movie Records </a>


	</center>


</body>
</html>
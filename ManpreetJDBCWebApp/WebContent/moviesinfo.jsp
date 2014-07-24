<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" import="java.util.ArrayList,model.Movie"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

	<center>
		<h1>Movies Dhamaka</h1>
		<h4>.. . . checkout latest movies and thier budget !</h4>
		<table bgcolor="yellow" width="70%">
		<th>ID</th><th>Title</th><th>Budget</th>
			<%
				ArrayList<Movie> movList = (ArrayList<Movie>) request
						.getAttribute("ALL_MOVIES");

				for (Movie m : movList) {
					out.println("<tr><td>" + m.id + "</td><td>" + m.title
							+ "</td><td>" + m.budget + "</td><td><a href='DeleteMovieServlet?id="+m.id+"'><img src='del.png'></a></td></tr>");
				}
			%>


		</table>


	</center>

</body>
</html>
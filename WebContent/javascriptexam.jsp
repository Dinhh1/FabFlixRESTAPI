<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="cs122b.DB.*, cs122b.Models.*, java.util.ArrayList, cs122b.Tables.*"
 %>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<title>Fab FLIX JSP TEST</title>
	</head>
	<h3>hello world</h3><br>
<%
	MovieDB db = new MovieDB();
	ArrayList<Movie> movies = db.Movies.getMoviesByName("B", 1, 100, Table.SortAttributes.M_ASC);
	for (Movie m : movies) {
		out.println("Stars in Movie: " + m.getTitle() + " = ");
		for (Star s : m.getStarsOfMovie()) 
			out.print(s.getFirstName() + " " + s.getLastName() + ", ");
		out.println("<br>");
		out.println("Genre in Movie: " + m.getTitle() + " = ");
		for (Genre g : m.getGenresOfMovie()) 
			out.print(g.getName() + ", ");
		out.println("<br>");
	}
%> 
	</body>
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.1/jquery.min.js"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/js/bootstrap.min.js"></script>
</html>
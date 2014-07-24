package controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.sql.Statement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class DeleteMovieServlet
 */
@WebServlet("/DeleteMovieServlet")
public class DeleteMovieServlet extends HttpServlet {

	protected void doGet(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		PrintWriter out = response.getWriter();

		String id = request.getParameter("id");

		// load the driver
		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");

			// establish connection
			Connection c = DriverManager
					.getConnection("jdbc:oracle:thin:system/1267@localhost:1521:XE");

			// create a statement
			Statement st = c.createStatement();

			int r = st.executeUpdate("delete from Movie where id="+id);

			if (r > 0) {
				// request.getRequestDispatcher("registrationsuccess.jsp")
				// .forward(request, response);
				request.getRequestDispatcher("FetchMovieServlet").forward(
						request, response);
			}

		} catch (ClassNotFoundException e) {
			out.println("Driver not Avialable" + e.getMessage());
			e.printStackTrace();
		} catch (SQLException e) {
			out.println("SQL Exception" + e.getMessage());
			e.printStackTrace();
		}
	}

	protected void doPost(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {

	}

}

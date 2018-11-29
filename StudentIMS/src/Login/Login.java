package Login;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/Login.do")
public class Login extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public Login() {
		super();
	}

	public void destroy() {
		super.destroy();
	}

	public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		response.setContentType("textml");
		PrintWriter out = response.getWriter();
		out.println("<!DOCTYPE HTML PUBLIC \"-//W3C//DTD HTML 4.01 Transitional//EN\">");
		out.println("<HTML>");
		out.println("  <HEAD><TITLE>A Servlet</TITLE></HEAD>");
		out.println("  <BODY>");
		out.print("    This is ");
		out.print(this.getClass());
		out.println(", using the GET method");
		out.println("  </BODY>");
		out.println("</HTML>");
		out.flush();
		out.close();
	}

	public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		request.setCharacterEncoding("UTF-8");
		response.setContentType("text/html; charset=UTF-8");
		String driveName = "com.microsoft.sqlserver.jdbc.SQLServerDriver";

		Statement stmt = null;
		ResultSet rs = null;
		String nu = null;
		Connection con = null;

		try {
			Class.forName(driveName);
			String url = "jdbc:sqlserver://localhost:1433;databaseName= Test";
			con = DriverManager.getConnection(url, "sa", "123456");
			String id = request.getParameter("userID");
			String password = request.getParameter("userPassword");
			Statement statement = con.createStatement();
			rs = statement.executeQuery(
					"select UserID  from [Test].[dbo].[用户表] where UserID= " + id + " and PassWord = " + password + "");

			boolean ant = false;
				while (rs.next()) {
					ant = true;
					break;
				}
				if(ant)
					response.sendRedirect("index.jsp");
				else{
					response.sendRedirect("error.jsp");
				}
					
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

	}

	public void init() throws ServletException {
	}

}
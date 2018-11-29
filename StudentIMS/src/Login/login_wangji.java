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
import javax.swing.JOptionPane;

@WebServlet("/login_wangji.do")
public class login_wangji extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public login_wangji() {
		super();
	}

	public void destroy() {
		super.destroy(); // Just puts "destroy" string in log
	}

	public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		response.setContentType("text/html");
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
		ResultSet rs = null;
		try {
			Class.forName(driveName);

			String url = "jdbc:sqlserver://localhost:1433;databaseName=Test";
			Connection con = DriverManager.getConnection(url, "sa", "123456");
			Statement statement = con.createStatement();
			String id1 = request.getParameter("studentID");
			String name = request.getParameter("student_name");
			int pd = 123456;
			rs = statement.executeQuery(
					"select UserID  from [Test].[dbo].[用户表] where userID= " + id1 + " and UserName ='" + name + "'");
			boolean ant = false;
			while (rs.next()) {
				ant = true;
				break;
			}
			if (ant) {
				System.out.println(rs);
				boolean flag = statement.execute(
						"update �û��� set PassWord='" + pd + "' where UserID='" + id1 + "' and UserName='" + name + "'");
				response.sendRedirect("login.jsp");
				throw new IOException("该用户不存在" );
				/*JOptionPane.showMessageDialog(null, "已将你的密码重置为初始密码, "消息", JOptionPane.WARNING_MESSAGE);"*/
			} else {
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

	/**
	 * Initialization of the servlet. <br>
	 *
	 * @throws ServletException
	 *             if an error occurs
	 */
	public void init() throws ServletException {
		// Put your code here
	}

}


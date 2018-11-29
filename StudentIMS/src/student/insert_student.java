package student;

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

@WebServlet("/insert.do")
public class insert_student extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public insert_student() {
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
			String id = request.getParameter("studentID");
			String name = request.getParameter("student_name");
			String grade = request.getParameter("student_grade");
			String sex = request.getParameter("student_sex");
			String num = request.getParameter("student_num");
			String adress = request.getParameter("student_adress");
			String state = request.getParameter("student_state");
			try {
				boolean flag = statement.execute(
						"insert into 学生表(StedentID,StudentName,StudentGrade,StudentSex,StudentCode,Studentadress,StudentState ) values('"
								+ id + "','" + name + "','" + grade + "','" + sex + "','" + num + "','" + adress
								+ "','" + state + "')");
			} catch (SQLException e) {
			 throw new IOException("该用户已存在 " );
				/*JOptionPane.showMessageDialog(null,"插入失败","提示",JOptionPane.WARNING_MESSAGE);*/
			}
			response.sendRedirect("admin_student1.jsp");
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
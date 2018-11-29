package student;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.swing.JOptionPane;

@WebServlet("/update.do")
public class updateStudent extends HttpServlet {

	public updateStudent() {
		super();
	}

	public void destroy() {
		super.destroy(); // Just puts "destroy" string in log
		// Put your code here
	}

	public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html;charset=utf-8");
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
		try {
			Class.forName(driveName);

			String url = "jdbc:sqlserver://localhost:1433;databaseName=Test";
			Connection con = DriverManager.getConnection(url, "sa", "123456");
			Statement statement = con.createStatement();
			String id = request.getParameter("studentID");
			String id1 = request.getParameter("studentid");
			String name = request.getParameter("student_name");
			String grade = request.getParameter("student_grade");
			String sex = request.getParameter("student_sex");
			String num = request.getParameter("student_num");
			String adress = request.getParameter("student_password");
			/*try {*/
				boolean flag = statement.execute("update 学生表 set StedentID='" + id + "',StudentName='" + name
						+ "',StudentGrade='" + grade + "',StudentSex='" + sex + "',StudentCode='" + num
						+ "',Studentadress='" + adress + "' where stedentID='" + id1 + "'");
			/*} catch (SQLException e) {
				JOptionPane.showMessageDialog(null,"更改失败","提示",JOptionPane.WARNING_MESSAGE);
			}*/
			response.sendRedirect("admin_student.jsp");
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

	public void init() throws ServletException {
		// Put your code here
	}

}

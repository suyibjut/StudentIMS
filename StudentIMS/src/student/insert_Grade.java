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

@WebServlet("/insert_Grade.do")
public class insert_Grade extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public insert_Grade() {
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
			String id = request.getParameter("stuID");
			String name = request.getParameter("stu_name");
			String Chinese = request.getParameter("stu_Chinese");
			String math = request.getParameter("stu_math");
			String English = request.getParameter("stu_English");
			String zonghe = request.getParameter("stu_zonghe");
			String jingji = request.getParameter("stu_jingji");
			String xinxi = request.getParameter("stu_xinxi");
			String zy = request.getParameter("stu_zy");
			/*try {*/
				boolean flag = statement.execute("insert into 成绩表 (学号,姓名,数据库技术,J2EE编程技术,马克思主义基本原理,微积分,微观经济学,信息资源管理概论,专业英语 ) values('" + id + "','" + name
						+ "','" + Chinese + "','" + math + "','" + English + "','" + zonghe + "','" + jingji + "','" + xinxi + "','" + zy + "')");
			/*} catch (SQLException e) {
				JOptionPane.showMessageDialog(null, "插入失败", "提示", JOptionPane.WARNING_MESSAGE);
			}*/
			response.sendRedirect("admin_grade.jsp");
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
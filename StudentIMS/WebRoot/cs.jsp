<%@ page language="java" import="java.sql.*,java.io.*,java.util.*"%>
<%@ page contentType="text/html;charset=utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
	public class TestColumnToArray {

		public static void main(String[] args) {
			TestColumnToArray instance = new TestColumnToArray();
			instance.connDB();
			List<Map<String, Object>> list = instance.findColumn();
			Object[] data = instance.getData(list, "。。。");//。。。换成要查得字段
			for (Object object : data) {
				System.out.println(object);
			}
		}

		private Object[] getData(List<Map<String, Object>> list, String column) {
			Object[] data = new Object[list.size()];
			for (int i = 0; i < list.size(); i++) {
				data[i] = list.get(i).get(column);
			}
			return data;
		}

		private void connDB() {
			try {
				Class.forName("com.mysql.jdbc.Driver");
			} catch (ClassNotFoundException e) {
				System.err.println("驱动加载失败!");
			}
		}

		private List<Map<String, Object>> findColumn() {
			List<Map<String, Object>> list = new ArrayList<Map<String, Object>>();

			Connection conn = null;
			Statement stmt = null;
			ResultSet rs = null;
			String sql = "select * from 。。。";//。。。换成表名
			try {
				conn = DriverManager.getConnection("。", "。。", "。。。");//。换成url。。换成数据库账户。。。换成数据库密码
				stmt = conn.createStatement();
				rs = stmt.executeQuery(sql);

				while (rs.next()) {
					Map<String, Object> map = new HashMap<String, Object>();
					map.put("。。。", rs.getInt(1));//。。。换成列名。。。", rs.getInt(2));
					map.put("。。。", rs.getInt(3));
					list.add(map);
				}
			} catch (SQLException e) {
				System.err.println("数据库读取失败!");
			} finally {
				try {
					if (rs != null)
						rs.close();
					if (stmt != null)
						stmt.close();
					if (conn != null)
						conn.close();
				} catch (SQLException e) {
				}
			}
			return list;
		}

	}
%>

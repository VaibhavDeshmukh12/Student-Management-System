package mavenWebProject.db;

import java.sql.Connection;
import java.sql.DriverManager;

public class DbConnect {
	static Connection con = null;
	static String url = "jdbc:mysql://localhost:3306/student_db";
	static String driver = "com.mysql.cj.jdbc.Driver";
	static String userName = "root";
	static String password1 = "Hack(#)@321";

	public static Connection myConnection() {
		try {
			Class.forName(driver);
			con = DriverManager.getConnection(url, userName, password1);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return con;
	}
}

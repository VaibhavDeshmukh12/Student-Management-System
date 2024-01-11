package mavenWebProject.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import mavenWebApp.dao.StudentDao;
import mavenWebProject.db.DbConnect;
import mavenWebProject.entity.Student;

@WebServlet("/register")
public class RegisterServlet extends HttpServlet {

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String name = req.getParameter("name");
		String dob = req.getParameter("dob");
		String addr = req.getParameter("addr");
		String email = req.getParameter("email");
		String qualification = req.getParameter("qualification");
		Student student = new Student(name, dob, addr, qualification, email);
		StudentDao std = new StudentDao(DbConnect.myConnection());

		HttpSession session = req.getSession();

		boolean f = std.addStudent(student);
		if (f) {
			session.setAttribute("success", "Student Details Submit Successfully...");
			resp.sendRedirect("addStud.jsp");
		} else {
			session.setAttribute("error", "Some Error Occurs..");
			resp.sendRedirect("addStud.jsp");
		}
	}

}

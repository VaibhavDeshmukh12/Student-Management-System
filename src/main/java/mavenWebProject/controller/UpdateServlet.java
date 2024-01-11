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

@WebServlet("/update")
public class UpdateServlet extends HttpServlet {

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		int id = Integer.parseInt(req.getParameter("id"));
		String name = req.getParameter("name");
		String dob = req.getParameter("dob");
		String addr = req.getParameter("addr");
		String email = req.getParameter("email");
		String qualification = req.getParameter("qualification");
		Student student = new Student(id, name, dob, addr, qualification, email);
		StudentDao dao = new StudentDao(DbConnect.myConnection());
		boolean f = dao.updateStudent(student);
		HttpSession session = req.getSession();

		if (f) {
			session.setAttribute("success", "Details Updated Successfully..");
			resp.sendRedirect("index.jsp");
		} else {
			session.setAttribute("error", "Update Fails..");
			resp.sendRedirect("index.jsp");
		}

	}

}

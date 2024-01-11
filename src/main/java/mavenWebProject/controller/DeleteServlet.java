package mavenWebProject.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.mysql.cj.Session;

import mavenWebApp.dao.StudentDao;
import mavenWebProject.db.DbConnect;
import mavenWebProject.entity.Student;

@WebServlet("/delete")
public class DeleteServlet extends HttpServlet{

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		StudentDao dao = new StudentDao(DbConnect.myConnection());
		int id = Integer.parseInt(req.getParameter("id"));
		boolean f = dao.deleteStudent(id);
		HttpSession session = req.getSession();
		
		if(f) {
			session.setAttribute("success","Record Deleted Succesfully");
			resp.sendRedirect("index.jsp");
		}
		else {
			session.setAttribute("error","Record Deletion Fails..");
			resp.sendRedirect("index.jsp");
		}
	}

}

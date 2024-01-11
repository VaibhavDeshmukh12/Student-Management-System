package mavenWebApp.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import mavenWebProject.entity.Student;

public class StudentDao {
	private Connection con;

	public StudentDao(Connection con) {
		super();
		this.con = con;
	}

	public boolean addStudent(Student stud) {
		boolean f = false;
		try {
			String sql = "insert into student(name,dob,address,qualification,email) values(?,?,?,?,?)";
			PreparedStatement ps = con.prepareStatement(sql);
			ps.setString(1, stud.getFullName());
			ps.setString(2, stud.getDob());
			ps.setString(3, stud.getAddr());
			ps.setString(4, stud.getQualification());
			ps.setString(5, stud.getEmail());
			int i = ps.executeUpdate();
			if (i == 1) {
				f = true;
			}
		} catch (Exception e) {
		}
		return f;
	}

	public List<Student> getAllStud() {
		List<Student> list = new ArrayList<>();
		Student s = null;
		String str = "select * from student";
		try {
			Statement state = con.createStatement();
			ResultSet res = state.executeQuery(str);
			while (res.next()) {
				s = new Student();
				s.setId(res.getInt(1));
				s.setFullName(res.getString(2));
				s.setDob(res.getString(3));
				s.setAddr(res.getString(4));
				s.setQualification(res.getString(5));
				s.setEmail(res.getString(6));
				list.add(s);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return list;
	}

	public Student getStudentById(int id) {
		Student s = null;
		String str = "select * from student where id = ?";
		try {
			PreparedStatement state = con.prepareStatement(str);
			state.setInt(1, id);
			ResultSet res = state.executeQuery();
			while (res.next()) {
				s = new Student();
				s.setId(res.getInt(1));
				s.setFullName(res.getString(2));
				s.setDob(res.getString(3));
				s.setAddr(res.getString(4));
				s.setQualification(res.getString(5));
				s.setEmail(res.getString(6));
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return s;
	}

	public boolean updateStudent(Student stud) {
		boolean f = false;
		try {
			String sql = "update student set name=?,dob=?,address=?,qualification=?,email=? where id=?";
			PreparedStatement ps = con.prepareStatement(sql);
			ps.setString(1, stud.getFullName());
			ps.setString(2, stud.getDob());
			ps.setString(3, stud.getAddr());
			ps.setString(4, stud.getQualification());
			ps.setString(5, stud.getEmail());
			ps.setInt(6, stud.getId());
			int i = ps.executeUpdate();

			if (i == 1) {
				f = true;
			}

		} catch (Exception e) {
		}
		return f;
	}

	public boolean deleteStudent(int id) {
		boolean f = false;
		try {
			String str = "delete from student where id = ?";
			PreparedStatement pstate = con.prepareStatement(str);
			pstate.setInt(1, id);
			int i = pstate.executeUpdate();

			if (i == 1) {
				f = true;
			}

		} catch (Exception e) {
			e.printStackTrace();
		}
		return f;
	}

	public List<Student> searchRecord(int id) {
		List<Student> list = new ArrayList<>();
		String str = "select * from student where id = ?";
		try {
			PreparedStatement state = con.prepareStatement(str);
			state.setInt(1, id);
			ResultSet res = state.executeQuery();
			if (res.next()) {
				list.add(new Student(res.getInt(1), res.getString(2), res.getString(3), res.getString(4),
						res.getString(5), res.getString(6)));
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return list;
	}

	public List<Student> getSort(String val) {
		List<Student> list = new ArrayList<>();
		Student s = null;
		if (val.equals("dob")) {
			String str = "select * from student order by Dob";
			try {
				Statement state = con.createStatement();
				ResultSet res = state.executeQuery(str);
				while (res.next()) {
					s = new Student();
					s.setId(res.getInt(1));
					s.setFullName(res.getString(2));
					s.setDob(res.getString(3));
					s.setAddr(res.getString(4));
					s.setQualification(res.getString(5));
					s.setEmail(res.getString(6));
					list.add(s);
				}
			} catch (Exception e) {
				e.printStackTrace();
			}
		} else {
			String sr = "select * from student order by qualification";
			try {
				Statement state = con.createStatement();
				ResultSet res = state.executeQuery(sr);
				while (res.next()) {
					s = new Student();
					s.setId(res.getInt(1));
					s.setFullName(res.getString(2));
					s.setDob(res.getString(3));
					s.setAddr(res.getString(4));
					s.setQualification(res.getString(5));
					s.setEmail(res.getString(6));
					list.add(s);
				}
			} catch (Exception e) {
				e.printStackTrace();
			}
		}

		return list;
	}
}

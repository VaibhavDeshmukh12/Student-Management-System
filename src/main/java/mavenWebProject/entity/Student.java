package mavenWebProject.entity;

public class Student {
	private int id;
	private String fullName;
	private String dob, addr, qualification;
	private String email;

	public Student() {
		super();
	}

	public Student(String fullName, String dob, String addr, String qualification, String email) {
		this.fullName = fullName;
		this.dob = dob;
		this.addr = addr;
		this.qualification = qualification;
		this.email = email;
	}

	public Student(int id, String fullName, String dob, String addr, String qualification, String email) {
		super();
		this.id = id;
		this.fullName = fullName;
		this.dob = dob;
		this.addr = addr;
		this.qualification = qualification;
		this.email = email;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getFullName() {
		return fullName;
	}

	public void setFullName(String fullName) {
		this.fullName = fullName;
	}

	public String getDob() {
		return dob;
	}

	public void setDob(String dob) {
		this.dob = dob;
	}

	public String getAddr() {
		return addr;
	}

	public void setAddr(String addr) {
		this.addr = addr;
	}

	public String getQualification() {
		return qualification;
	}

	public void setQualification(String qualification) {
		this.qualification = qualification;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	@Override
	public String toString() {
		return "Student [id=" + id + ", fullName=" + fullName + ", dob=" + dob + ", addr=" + addr + ", qualification="
				+ qualification + ", email=" + email + "]";
	}

}

package kr.or.dgit.web_study_final.dto;

public class Student {
	private int no;
	private String name;

	public Student(int no, String name) {
		super();
		this.no = no;
		this.name = name;
	}

	@Override
	public String toString() {
		return "Student [no=" + no + ", name=" + name + "]";
	}

}

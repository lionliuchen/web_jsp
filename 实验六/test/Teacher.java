package test;

public class Teacher implements Person {
	private String name;
	private Student student;
	public void setName(String name) {
		this.name = name;
	}
	public void setStudent(Student student) {
		this.student = student;
	}
	public Teacher(String name,Student student){
		this.name=name;
		this.student=student;
	}
	@Override
	public void go() {
		// TODO Auto-generated method stub
		System.out.println(name + "去教室讲课");
	}

}

package test;

public class Student implements Person {
	private String name;
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	@Override
	public void go() {
		// TODO Auto-generated method stub
		System.out.println(name + "去教室上课");
	}

}

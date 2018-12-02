package test;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

public class Test {
	public static void main(String[] args){
		ApplicationContext ctx=new ClassPathXmlApplicationContext("ApplicationContext.xml");
		Person teacher=(Person)ctx.getBean("teacher");
		teacher.go();
		Person student=(Person)ctx.getBean("student");
		student.go();
	}
}

package action;

import com.opensymphony.xwork2.ActionSupport;

public class HelloWorldAction extends ActionSupport {
	public String execute() throws Exception{
		System.out.println("执行Action");
		return "success";
	}
}

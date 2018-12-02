package org.struts.useraction;

import com.opensymphony.xwork2.ActionSupport;

public class UserAction extends ActionSupport {
	private String username;
	private String password;

	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String execute() throws Exception {
		System.out.println("Login.action");
		if ("scott".equals(username) && "tiger".equals(password))
			return "success";
		else
			return "error";
	}
}

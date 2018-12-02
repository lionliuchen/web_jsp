package com.test;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.Configuration;
import com.pojo.User;

public class UserDAO {
	public static void main(String args[]) {
		SessionFactory sf;
		Configuration cfg;

		User user = new User();
		user.setId(1);
		user.setName("西华师大");
		user.setPass("123456");
		try {
			// 读取并解析配置文件
			cfg = new Configuration().configure();
			// 构建SessionFactory对象
			sf = cfg.buildSessionFactory();
			// 打开session
			Session session = sf.openSession();
			// 开启事务
			Transaction tx = session.beginTransaction();
			// 执行持久化操作
			session.save(user);
			// 提交事务
			tx.commit();
			// 关闭session
			session.close();
		} catch (Exception e) {
			e.printStackTrace();
		}

	}
}

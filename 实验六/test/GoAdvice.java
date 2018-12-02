package test;

import java.lang.reflect.Method;

import org.aopalliance.intercept.MethodInvocation;
import org.springframework.aop.MethodBeforeAdvice;

public class GoAdvice implements MethodBeforeAdvice {

	@Override
	public void before(Method arg0, Object[] arg1, Object arg2)
			throws Throwable {
		// TODO Auto-generated method stub
		System.out.println("充分准备好！");
	}
	
	public Object invoke(MethodInvocation arg0) throws Throwable{
		System.out.println("上课了");
		Object myclass = arg0.proceed();
		System.out.println("下课了");
		return myclass;
	}
	
	public void afterReturning(Object arg0,Method arg1,Object[] arg2,
			Object arg3) throws Throwable{
		System.out.println("同学们再见！");
	}
}

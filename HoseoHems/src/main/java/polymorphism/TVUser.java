package polymorphism;

import org.springframework.context.support.AbstractApplicationContext;
import org.springframework.context.support.GenericXmlApplicationContext;


public class TVUser {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		//BeanFactory factory = new BeanFactory();
		
		//1. 스프링 컨테이너 구동
		AbstractApplicationContext factory = new GenericXmlApplicationContext("applicationContext.xml");
		
		TV tv = (TV)factory.getBean("tv");
		//스프링 컨테이너로부터 필요한 객체 요청
		tv.powerOn();
		tv.volumeUp();
		tv.volumeDown();
		tv.powerOff();
		
		factory.close();
		//컨테이너 종료

	}

}
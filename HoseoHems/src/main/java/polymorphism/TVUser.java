package polymorphism;

import org.springframework.context.support.AbstractApplicationContext;
import org.springframework.context.support.GenericXmlApplicationContext;


public class TVUser {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		//BeanFactory factory = new BeanFactory();
		
		//1. ������ �����̳� ����
		AbstractApplicationContext factory = new GenericXmlApplicationContext("applicationContext.xml");
		
		TV tv = (TV)factory.getBean("tv");
		//������ �����̳ʷκ��� �ʿ��� ��ü ��û
		tv.powerOn();
		tv.volumeUp();
		tv.volumeDown();
		tv.powerOff();
		
		factory.close();
		//�����̳� ����

	}

}
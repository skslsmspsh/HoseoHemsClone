package com.springbook.biz.user;
import org.springframework.context.support.AbstractApplicationContext;
import org.springframework.context.support.GenericXmlApplicationContext;

public class UserServiceClient {
   public static void main(String[] args) {
      //1. �����̳� ����
      AbstractApplicationContext container = new GenericXmlApplicationContext("applicationContext.xml");
      //2. ��ü�� lookup
      UserService userService=(UserService) container.getBean("userService");
      //3. login test
      UserVO vo=new UserVO();
      vo.setId("test");
      vo.setPassword("test123");
      
      UserVO user=userService.getUser(vo);
      if(user!=null) {
    	  System.out.println(user.getName()+"�� ȯ���մϴ�");
      }else {
    	  System.out.println("�α��� ��������");
      }
      //4. spring �����̳� ����
      container.close();
   }
}
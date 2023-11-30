package com.springbook.biz.user;
import org.springframework.context.support.AbstractApplicationContext;
import org.springframework.context.support.GenericXmlApplicationContext;

public class UserServiceClient {
   public static void main(String[] args) {
      //1. 컨테이너 구동
      AbstractApplicationContext container = new GenericXmlApplicationContext("applicationContext.xml");
      //2. 객체를 lookup
      UserService userService=(UserService) container.getBean("userService");
      //3. login test
      UserVO vo=new UserVO();
      vo.setId("test");
      vo.setPassword("test123");
      
      UserVO user=userService.getUser(vo);
      if(user!=null) {
    	  System.out.println(user.getName()+"님 환영합니다");
      }else {
    	  System.out.println("로그인 오류류류");
      }
      //4. spring 컨테이너 종료
      container.close();
   }
}
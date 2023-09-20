package com.example.lesson01;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller //jsp를 뿌릴때는 @ResponseBody가 없는 @Controller를 사용해야한다.
public class Lesson01Ex02Controller {
	//요청 URL : http://localhost/lesson01/ex02
	@RequestMapping("/lesson01/Ex02")
	public String ex02() {
		//jsp 경로를 리턴한다.
		//return "/WEB-INF/jsp/lesson01/ex02.jsp";
		//  /WEB-INF/jsp/  중간경로 .jsp
		return "lesson01/Ex02"; //jsp view 경로와 이름 
		//위는 요청주소이고, 내려주는 응답의 jsp는 이거다. 둘은 연관관계가 전혀 없다.
	}
}

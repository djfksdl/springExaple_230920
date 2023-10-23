package com.example.lesson07;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.example.lesson04.bo.StudentBO;
import com.example.lesson07.entity.StudentEntity;

@RequestMapping("/lesson07/ex01")
@RestController
public class Lesson07Ex01RestController {
	
	@Autowired
	private StudentBO studentBO;
	
	// C U D
	
	// C:create, insert
	@GetMapping("/1")
	public StudentEntity create() {
		String name = "신보람";
		String phoneNumber = "010-1111-5222";
		String email = "sbr@kakao.com";
		String dreamJob = "개발자";
		
		// 지금 들어간 id 값도 바로 꺼낼 수 있다.   getId();
		return studentBO.addStudent(name, phoneNumber, email, dreamJob);
	}
	
	// U: Update
	@GetMapping("/2")
	public StudentEntity update() {
		// id:4 dreamJob을 변경
		// JSON
		return studentBO.updateStudentDreamJobById(4, "디자이너");
	}
	
	
}
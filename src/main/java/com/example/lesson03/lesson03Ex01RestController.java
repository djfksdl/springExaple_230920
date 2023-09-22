package com.example.lesson03;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import com.example.lesson03.bo.ReviewBO;
import com.example.lesson03.domain.Review;

@RestController
public class lesson03Ex01RestController {
	
	@Autowired
	private ReviewBO reviewBO;
	//요청 url : http://localhost/lesson03/ex01
	//요청 url : http://localhost/lesson03/ex01?id=5
	@RequestMapping("/lesson03/ex01")
		public Review ex01(
				@RequestParam(value="id") int id) {
			return reviewBO.getReview(id); //response body에는 json이 내려가게 됨
	}
}

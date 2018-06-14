package org.zerock.controller;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import org.zerock.domain.SampleVO;

@RestController
@RequestMapping("/sample")
public class SampleController {
	
	@RequestMapping("/hello")
	public String sayHello() {
		return "Hello world";
		
	}
	
	
	@RequestMapping("/sendVO")
	public SampleVO sendVO() {
		SampleVO vo = new SampleVO();
		vo.setFirstName("�浿");
		vo.setLastName("ȫ");
		vo.setMno(123);
		
		return vo;
	}
	
}

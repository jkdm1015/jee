package com.homepage.web.servicesimpl;

import com.homepage.web.services.HelloServices;

public class HelloServicesImpl implements HelloServices{

	@Override
	public String greet() {
		
		return "반갑습니다. ";
	}

}

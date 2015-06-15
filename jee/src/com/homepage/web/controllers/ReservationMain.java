package com.homepage.web.controllers;


import com.homepage.web.services.ReservationService;
import com.homepage.web.servicesimpl.ReservationServiceImpl;

public class ReservationMain {
	public static void main(String[] args) {
		ReservationService service = new ReservationServiceImpl();
		service.process();
	}
}

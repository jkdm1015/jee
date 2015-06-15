package com.homepage.web.controllers;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.homepage.web.services.KaupService;
import com.homepage.web.servicesimpl.KaupServiceImpl;

/**
 * @ Date : someday
 * @ Author : Jenog Min-kyu
 * @ Story : 키와 몸무게가 입력되면 카우프 지수와 메시지를 웹브라우저에 렌더링하는 역할
 */
@WebServlet("/model2/kaup.do")
public class KaupController extends HttpServlet {
	
	private static final long serialVersionUID = 1L;
       
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		KaupService service = new KaupServiceImpl();
		double height = Double.parseDouble(request.getParameter("height"));
		double weight = Double.parseDouble(request.getParameter("weight"));
		request.setAttribute("height", height);
		request.setAttribute("weight", weight);
		service.getKaupIndex(height, weight);
		request.setAttribute("msg", service.getResultMsg());
		RequestDispatcher dis = request.getRequestDispatcher("/views/model2/kaup.jsp");
		dis.forward(request, response);
	}
}

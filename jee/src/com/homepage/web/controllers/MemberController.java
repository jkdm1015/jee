package com.homepage.web.controllers;


import java.io.IOException;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.homepage.web.beans.MemberBean;
import com.homepage.web.services.MemberService;
import com.homepage.web.servicesimpl.MemberServiceImpl;

/**
 * Servlet implementation class MemberController
 */
@WebServlet({"/model2/join.do","/model2/login.do"})
public class MemberController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	MemberBean bean = new MemberBean();
	MemberService service = new MemberServiceImpl();
 
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		
	/*	request.setAttribute("name", bean.getName());
		request.setAttribute("id", bean.getId());
		request.setAttribute("password", bean.getPassword());
		request.setAttribute("age", bean.getAge());
		request.setAttribute("address", bean.getAddr());*/
		RequestDispatcher dispatcher;
		String path = request.getServletPath();
		switch (path) {
		case "/model2/join.do":
			String name = request.getParameter("name");
			String id = request.getParameter("id");
			String password = request.getParameter("password");
			Integer age = Integer.parseInt(request.getParameter("age"));
			String address = request.getParameter("address");
			
			bean.setName(name);
			bean.setId(id);
			bean.setPassword(password);
			bean.setAge(age);
			bean.setAddress(address);
			
			service.join(id, password, name, age, address);
			dispatcher = request.getRequestDispatcher("/views/model2/memberForm.jsp");
			dispatcher.forward(request, response);
			break;
			
		case "/model2/login.do":
			String id2 = bean.getId();
			String password2 = bean.getPassword();
			String msg = service.login(id2, password2);
			if(msg.equals("성공")){
				System.out.println("로그인 성공시 : "+bean.getId());
				request.setAttribute("id", bean.getId());
				request.setAttribute("password", bean.getPassword());
				request.setAttribute("name", bean.getName());
				request.setAttribute("age", bean.getAge());
				request.setAttribute("address", bean.getAddress());
				dispatcher = request.getRequestDispatcher("/views/model2/member.jsp");
				dispatcher.forward(request, response);
			
			}else {
				request.setAttribute("msg", msg);
				dispatcher = request.getRequestDispatcher("/views/model2/loginFail.jsp");
				dispatcher.forward(request, response);
			}
			
			
			break;

		default:
			break;
		}
	}
}

package com.homepage.web.controllers;


import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.homepage.member.beans.MemberBean;
import com.homepage.web.services.MemberService;
import com.homepage.web.servicesimpl.MemberServiceImpl;

/**
 * Servlet implementation class MemberController
 */
@WebServlet({"/model2/join.do","/model2/login.do",
	"/model2/searchAllMembers.do"})
public class MemberController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	MemberBean bean = new MemberBean();
	MemberService service = MemberServiceImpl.getInstance();
 
	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		RequestDispatcher dispatcher;
		String path = request.getServletPath();
		
		switch (path) {
		case "/model2/searchAllMembers.do":
			List<MemberBean> list = new ArrayList<MemberBean>();
			list = service.getList();
			request.setAttribute("memberList", list);
			dispatcher = request.getRequestDispatcher("/views/model2/memberList.jsp");
			dispatcher.forward(request, response);
			break;

		default:
			break;
		}
			
		
	}
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
			String age = request.getParameter("age");
			String email = request.getParameter("email");
			
			bean.setName(name);
			bean.setId(id);
			bean.setPassword(password);
			bean.setAge(age);
			bean.setEmail(email);
			
			int result = service.join(bean);
			String joinMsg = "";
			if(result != 0){
				joinMsg = name + " 님 환영합니다";
			}else{
				joinMsg = "회원가입에 실패하셨습니다.";
			}
			request.setAttribute("msg", joinMsg);
			dispatcher = request.getRequestDispatcher("/views/model2/mainForm.jsp");
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

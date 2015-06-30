package com.homepage.web.servicesimpl;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import com.homepage.member.beans.MemberBean;
import com.homepage.web.daos.MemberDAO;
import com.homepage.web.services.MemberService;

public class MemberServiceImpl implements MemberService{
	
	// DAO 가 싱글톤 패턴으로 단 하나의 인스턴스만 리턴한다면
	// 그것을 사용하는 서비스도 싱글톤으로 구성해야 한다
	// 그러지 않으면 다중 접속 상태에서 하나의 인스턴스만 사용하게 되어
	// 접속불량 현상이 발생한다.
	private static MemberService service = new MemberServiceImpl();
	private MemberServiceImpl() {}
	public static MemberServiceImpl getInstance(){
		return (MemberServiceImpl) service;
	}
	
	MemberBean bean = new MemberBean();
	Map<String,Object> map = new HashMap<String,Object>();
	
	@Override
	public int join(MemberBean bean) {
		return MemberDAO.getInstance().join(bean);
	}

	@Override
	public String login(String id, String password) {
		return null;
	}

	@Override
	public List<MemberBean> getList() {
		MemberDAO dao = MemberDAO.getInstance();
		return dao.getList();
	}

}

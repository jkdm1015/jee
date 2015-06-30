package com.homepage.web.services;

import java.util.List;

import com.homepage.member.beans.MemberBean;

public interface MemberService {
	public int join(MemberBean bean);
	
	public String login(String id, String password);
	public List<MemberBean> getList();
}

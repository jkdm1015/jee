package com.homepage.web.servicesimpl;

import com.homepage.web.beans.KaupBean;
import com.homepage.web.services.KaupService;

public class KaupServiceImpl implements KaupService{
	KaupBean vo = new KaupBean();
	@Override
	public int getKaupIndex(double height, double weight) {
		vo.setHeight(height);
		vo.setWeight(weight);
		return (int) ((weight / (height * height)) * 10000);
	}

	@Override
	public String getResultMsg() {
		int idx = getKaupIndex(vo.getHeight(), vo.getWeight());
		String msg ="";
		if (idx > 30) {
			msg = " 비만";
		} else if (idx > 24) {
			msg = " 과체중";
		} else if (idx > 20) {
			msg = " 정상";
		} else if (idx > 15) {
			msg = " 저체중";
		} else if (idx > 13) {
			msg = " 마름";
		} else if (idx > 10) {
			msg = " 영양실조";
		} else {
			msg = " 소모증";
		}
		return "키는 "+vo.getHeight()+"cm, 체중은 "+vo.getWeight()+
				"kg 이며 카우프지수는 "+idx+"이며 "+msg+"입니다";
	}

}
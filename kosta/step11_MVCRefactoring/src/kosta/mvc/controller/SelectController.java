package kosta.mvc.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
/**
 * �˻���� ���....
 * */
public class SelectController implements Controller {

	@Override
	public ModelAndView handleRequest(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		//�˻����.......
		System.out.println("SelectController call.........");
		
		//������ ������ ����.
		request.setAttribute("message", "�˻��� �Ϸ�Ǿ����ϴ�...");
		ModelAndView mv = new ModelAndView();
		mv.setViewName("selectResult.jsp");
		
		return mv;
	}

}

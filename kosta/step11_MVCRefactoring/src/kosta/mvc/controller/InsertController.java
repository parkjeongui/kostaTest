package kosta.mvc.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * ����� ���� Controller
 * */
public class InsertController implements Controller {
	@Override
	public ModelAndView handleRequest(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		//reuqest ���� �ޱ�....-> DTO�� ���� -> service ȣ�� - daoȣ��
		//��� �ޱ�... - �̵�
		System.out.println("InsertController call........");
		
		ModelAndView mv = new ModelAndView(true, "insertResult.jsp");
		return mv;
	}

}






package kosta.mvc.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
/**
 * �����ϱ� 
 * */
public class DeleteController implements Controller {

	@Override
	public ModelAndView handleRequest(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
	  System.out.println("DeleteController call..........");
	  
	  //�����ϱ� 
	 ModelAndView mv = new ModelAndView();
	 mv.setRedirect(true);
	 mv.setViewName("front?key=select");
	  
		return mv;
	}

}







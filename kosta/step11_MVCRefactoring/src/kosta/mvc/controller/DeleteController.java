package kosta.mvc.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
/**
 * 삭제하기 
 * */
public class DeleteController implements Controller {

	@Override
	public ModelAndView handleRequest(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
	  System.out.println("DeleteController call..........");
	  
	  //삭제하기 
	 ModelAndView mv = new ModelAndView();
	 mv.setRedirect(true);
	 mv.setViewName("front?key=select");
	  
		return mv;
	}

}







package kosta.mvc.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public interface Controller {
  ModelAndView handleRequest(HttpServletRequest request, HttpServletResponse response)
		      throws ServletException, IOException;
}

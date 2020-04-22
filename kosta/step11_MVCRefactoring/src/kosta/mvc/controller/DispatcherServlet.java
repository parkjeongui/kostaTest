package kosta.mvc.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * View�� ��� ��û�� �߾����������� �����ϱ� ���� 
 * FrontController�� �����̴�.
 * : ��û�� �޾� Model(Service-BusinessLogic, DAO)������ �����ϰ� 
 *  �� ����� �޾Ƽ� ��� ��� �̵��ϴ� ����.
 */
@WebServlet(urlPatterns = "/front" , loadOnStartup = 1)
public class DispatcherServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
   
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String key = request.getParameter("key");
		System.out.println("key = " + key);
		
		Controller controller=null;
		if(key.equals("insert")) {
			//����ϱ�
			controller = new InsertController();
		}else if(key.equals("select")) {
			//�˻��ϱ� ���
			controller = new SelectController();
		}else if(key.equals("update")) {
			//�����ϱ� ���
			controller = new UpdateController();
		}else if(key.equals("delete")) {
			//�����ϱ� ���
			controller = new DeleteController();
		}
		
		ModelAndView mv = controller.handleRequest(request, response);
		if(mv.isRedirect()) {//redirect ������� �̵���
			response.sendRedirect(mv.getViewName());
		}else {//forward���
			request.getRequestDispatcher(mv.getViewName()).forward(request, response);
		}
		
		
	}

}











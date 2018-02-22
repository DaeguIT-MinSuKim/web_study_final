package kr.or.dgit.web_study_final.mvc.handler;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kr.or.dgit.web_study_final.mvc.command.CommandHandler;

public class HelloHandler implements CommandHandler {

	@Override
	public String process(HttpServletRequest req, HttpServletResponse res) throws Exception {
		req.setAttribute("hello", "안녕하세요!");
//		return "/WEB-INF/view/hello.jsp";
		return "/chap18/hello.jsp";
	}

}

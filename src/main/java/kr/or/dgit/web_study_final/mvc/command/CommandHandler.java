package kr.or.dgit.web_study_final.mvc.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public interface CommandHandler {
	String process(HttpServletRequest req, HttpServletResponse res) throws Exception;
}

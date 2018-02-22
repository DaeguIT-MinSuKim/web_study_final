package kr.or.dgit.web_study_final.mvc.filter;

import java.util.Collections;
import java.util.Enumeration;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletRequestWrapper;

public class NullParameterRequestWrapper extends HttpServletRequestWrapper {
	private Map<String, String[]> parameterMap;
	
	public NullParameterRequestWrapper(HttpServletRequest request) {
		super(request);
		parameterMap = new HashMap<>(request.getParameterMap());//request 파라미터 정보를 parameterMap에 저장
	}
	
	public void checkNull(String[] parameterNames) {
		for(String name : parameterNames) {
			if (!parameterMap.containsKey(name)) {
				parameterMap.put(name, new String[] {""});
			}
		}
	}
	
	@Override
	public String getParameter(String name) {
		String[] values = getParameterValues(name);
		if (values != null && values.length > 0) {
			return values[0];
		}
		return null;
	}

	@Override
	public Map<String, String[]> getParameterMap() {
		return parameterMap;
	}
	
	@Override
	public Enumeration<String> getParameterNames() {
		return Collections.enumeration(parameterMap.keySet());
	}
	
	@Override
	public String[] getParameterValues(String name) {
		return parameterMap.get(name);
	}
}

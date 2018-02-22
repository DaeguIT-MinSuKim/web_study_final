package kr.or.dgit.web_study_final.mvc.filter;

import java.io.IOException;
import java.util.Arrays;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.http.HttpServletRequest;

public class NullParameterFilter implements Filter {
	private String[] parameterNames;
	
    public void init(FilterConfig fConfig) throws ServletException {
    	String names = fConfig.getInitParameter("parameterNames");  //web.xml "parameterNames" => "id, name"
//    	parameterNames = names.split(", ");
    	parameterNames = names.split("\\s*,\\s*");// \\s공백 ,를 기준으로 앞뒤 공백제거
    	System.out.println(Arrays.toString(parameterNames));
	}
    

	public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain) throws IOException, ServletException {
		NullParameterRequestWrapper requestWrapper = new NullParameterRequestWrapper((HttpServletRequest) request);
		requestWrapper.checkNull(parameterNames);
		
		chain.doFilter(requestWrapper, response);
	}

	public void destroy() {}

}

package com.github.interceptor;
/**
 * @author Harish
 * 
 * https://github.com/Harish046
 * 
 * <code>CustomInterceptor.class</code> 
 */
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

public class CustomInterceptor extends HandlerInterceptorAdapter  {
	
	@Override
	public void postHandle(HttpServletRequest request, HttpServletResponse response, Object handler,
			ModelAndView modelAndView) throws Exception {
		
			String view=modelAndView.getViewName();
			//Check the prefix for view name whether to send it to thymeleaf or jsp resolver
			if(view.startsWith("/thl"))
			{
				modelAndView.setViewName(view);
				return;
			}
			else
			{
				//removing '/jsp' since in spring-servlet.xml jsp resolver includes /jsp
				modelAndView.setViewName(view.substring(4));
				return;
			}
	}

}

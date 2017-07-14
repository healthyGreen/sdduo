package sd.duo.common;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

public class loginInterceptor extends HandlerInterceptorAdapter{

	@Override
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler) throws Exception {
		if(request.getSession().getAttribute("session_admin")==null || request.getSession().getAttribute("session_admin")=="0"){
			response.sendRedirect("/SDDuo/main.do");
			return false;
		}	
		return true;
	}
}

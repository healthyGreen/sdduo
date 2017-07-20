package sd.duo.common;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

public class memberInterceptor extends HandlerInterceptorAdapter{

	@Override
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler) throws Exception {
		if(request.getSession().getAttribute("session_member_id")==null || request.getSession().getAttribute("session_member_id")=="0"){
			response.sendRedirect("/SDDuo/interceptor.do");
			return false;
		}	
		return true;
	}
}

package sd.duo.main;


import java.util.ArrayList;
import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.dao.DuplicateKeyException;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import sd.duo.consulting.consultingDao;
import sd.duo.consulting.consultingService;
import sd.duo.consulting.consultingModel;

import sd.duo.adminNotice.AdminNoticeDAO;
import sd.duo.adminNotice.AdminNoticeModel;
import sd.duo.adminNotice.AdminNoticeService;


@Controller

public class MainController {
	
	@Resource
	public consultingService service1;
	@Resource
	public AdminNoticeService service2;
	ModelAndView mav = new ModelAndView();
	
	@RequestMapping(value="/main.do")
	   public ModelAndView main(HttpServletRequest request) {
		
		  List<consultingModel> consultinglist = service1.consultingList();
		  
		  List<AdminNoticeModel> adminNoticeList = service2.noticeList();
		  
		  mav.addObject("adminNoticeList", adminNoticeList);
		  mav.addObject("consultinglist", consultinglist); 
	      mav.setViewName("main");
	      return mav;
	      
	      
	   }
	
	@RequestMapping(value = "/interceptor.do")
	public ModelAndView interceptor() {
		mav.setViewName("memberInterceptor");
		return mav;
	}
	
	@RequestMapping(value="/Introduce.do", method = RequestMethod.GET)
	public String introduce() {
		
		return "introduce";
	}
	
}

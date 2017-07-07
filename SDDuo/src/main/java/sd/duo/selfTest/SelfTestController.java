package sd.duo.selfTest;


import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;


@Controller
public class SelfTestController {
	
	
	@Resource
	private SelfTestService selfService;
	
	
	
	@RequestMapping(value="/self/selfWrite.do", method=RequestMethod.GET)
	public ModelAndView noticeForm(HttpServletRequest request) {
		System.out.println("111");
		
		ModelAndView mav = new ModelAndView();
		mav.addObject("selfModel", new SelfTestModel());
		mav.setViewName("self");
		return mav;
	}
	
	//공지사항 글쓰기
	@RequestMapping(value="/self/selfWrite.do", method=RequestMethod.POST)
	public ModelAndView noticeWrite(@ModelAttribute("selfModel") SelfTestModel selfModel, HttpServletRequest request)throws Exception{
		System.out.println("222");
		ModelAndView mav = new ModelAndView();
				
		
		selfService.selfWrite(selfModel);
			
		mav.setViewName("self");
				
		return mav;
			
	
	}

}

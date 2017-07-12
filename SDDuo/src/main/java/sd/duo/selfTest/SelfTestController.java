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
	
	private String category;
	
	
	@Resource
	private SelfTestService selfService;
	
	
	
	@RequestMapping(value="/self/selfWrite.do", method=RequestMethod.GET)
	public ModelAndView noticeForm(HttpServletRequest request) {
		
		ModelAndView mav = new ModelAndView();
		mav.addObject("selfModel", new SelfTestModel());
		mav.setViewName("self");
		return mav;
	}
	
	// 자가진단 점수 입력
	@RequestMapping(value="/self/selfWrite.do", method=RequestMethod.POST)
	public ModelAndView noticeWrite1(SelfTestModel selfModel, HttpServletRequest requeset,
			HttpSession session)throws Exception{
		System.out.println("111");
		
		ModelAndView mav = new ModelAndView();
		
		String id;
		String cg;
		
		
		if(	session.getAttribute("session_member_id") != null){
			
			System.out.println("222");
			id = session.getAttribute("session_member_id").toString();
			
		}

		
		id = requeset.getParameter("m_id").toString(); // 세션아이디로 안하면 널 포인트 오류가 뜨기때문에 나중에 세션아이디로 바꿀것
		
		cg = requeset.getParameter("category").toString();
		
		System.out.println("222"+cg+id);
		System.out.println("3333"+selfModel.getT_score());
		
/*		String sc = requeset.getParameter("t_score");
		
		int score = Integer.parseInt(sc);*/

		
		if(cg.equals("1")){
			
			
			
			System.out.println("111111"+selfModel.getCount());
			System.out.println("3333333"+selfModel.getT_score());
			
			int count = selfService.check1(id);
			
		
			
			System.out.println("카운트"+count);
			
			if(count != 0){
			selfService.selfModify1(selfModel);
			
			mav.setViewName("self");
		
			return mav;
			
			}else{
				
				
				selfService.selfWrite1(selfModel);
				
				mav.setViewName("self");
			
				return mav;
				
			}
		}else if(cg.equals("2")){
			
		
			if(selfModel.getCount() != 0){
				
				selfService.selfModify2(id);
				
				mav.setViewName("self");
			
				return mav;
				
				}else{
					
					
					selfService.selfWrite2(selfModel);
					
					mav.setViewName("self");
				
					return mav;
					
				}
			
			
		}else if(cg.equals("3")){
			
		
			selfService.newtechnology3(selfModel);
			System.out.println("333"+selfModel);
			
			mav.setViewName("self");
		
			return mav;
		}else{
			
		
			selfService.newtechnology4(selfModel);
			System.out.println("444"+selfModel);
			
			mav.setViewName("self");
		
			return mav;
		}
		
		
		
	}
	
	

	public String getCategory() {
		return category;
	}

	public void setCategory(String category) {
		this.category = category;
	}
	
	/*// 자가진단 점수 입력
		@RequestMapping(value="/self/selfWrite2.do", method=RequestMethod.POST)
		public ModelAndView noticeWrite2(@ModelAttribute("selfModel") SelfTestModel selfModel, HttpServletRequest requeset)throws Exception{
			System.out.println("222");
			
			ModelAndView mav = new ModelAndView();
			
			String m_id;
			
			m_id = requeset.getParameter("m_id");
			
			selfModel = (SelfTestModel)selfService.check2(m_id);
			
			System.out.println("222"+selfModel.getM_id());
			
			
			if(selfModel.getM_id() != null){
			
			selfService.selfModify2(m_id);
			
			mav.setViewName("self");
			
			return mav;
			
			}else{
			
			selfService.selfWrite2(selfModel);
			
			mav.setViewName("self");
					
			return mav;
			}
			
			
		}
		
		// 자가진단 점수 입력
		@RequestMapping(value="/self/selfWrite3.do", method=RequestMethod.POST)
		public ModelAndView noticeWrite3(@ModelAttribute("selfModel") SelfTestModel selfModel, HttpServletRequest requeset)throws Exception{
			System.out.println("222");
			
			ModelAndView mav = new ModelAndView();
			
			String m_id;
			
			m_id = requeset.getParameter("m_id");
			
			selfModel = (SelfTestModel)selfService.check3(m_id);
			
			System.out.println("222"+selfModel.getM_id());
			
			
			if(selfModel.getM_id() != null){
			
			selfService.selfModify3(m_id);
			
			mav.setViewName("self");
			
			return mav;
			
			}else{
			
			selfService.selfWrite3(selfModel);
			
			mav.setViewName("self");
					
			return mav;
			}
			
			
		}
		
		// 자가진단 점수 입력
		@RequestMapping(value="/self/selfWrite4.do", method=RequestMethod.POST)
		public ModelAndView noticeWrite4(@ModelAttribute("selfModel") SelfTestModel selfModel, HttpServletRequest requeset)throws Exception{
			System.out.println("222");
			
			ModelAndView mav = new ModelAndView();
			
			String m_id;
			
			m_id = requeset.getParameter("m_id");
			
			selfModel = (SelfTestModel)selfService.check4(m_id);
			
			System.out.println("222"+selfModel.getM_id());
			
			
			if(selfModel.getM_id() != null){
			
			selfService.selfModify4(m_id);
			
			mav.setViewName("self");
			
			return mav;
			
			}else{
			
			selfService.selfWrite4(selfModel);
			
			mav.setViewName("self");
					
			return mav;
			}
			
			
		}*/

}

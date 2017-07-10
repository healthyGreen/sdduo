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
	
	// �ڰ����� ���� �Է�
	@RequestMapping(value="/self/selfWrite.do", method=RequestMethod.POST)
	public ModelAndView noticeWrite(@ModelAttribute("selfModel") SelfTestModel selfModel, HttpServletRequest request)throws Exception{
		System.out.println("222");
		ModelAndView mav = new ModelAndView();
		
		String m_id="1";
		
		System.out.println(m_id);
		
		if(m_id != null){
			
			System.out.println("333���̵� �ִ�");
			String t_category = selfModel.getT_category();
			
			if(t_category != null){
				System.out.println("333���̵� �ְ� ī�װ��� �ִ�");
				if(t_category == "1"){
					System.out.println("4444ī�װ��� 1");
					selfService.selfModify1(m_id);
					
				}else if(t_category == "2"){
					System.out.println("4444ī�װ��� 2");
					selfService.selfModify2(m_id);
					
				}else if(t_category == "3"){
					System.out.println("4444ī�װ��� 3");
					selfService.selfModify3(m_id);
					
				}else if(t_category == "4"){
					System.out.println("4444ī�װ��� 4");
					selfService.selfModify4(m_id);
					
				}
				
			}
			
			mav.setViewName("self");
			
			return mav;
			
		}else{
			
		System.out.println("5555ó�� �Է�");
		
		selfService.selfWrite(selfModel);
			
		mav.setViewName("self");
				
		return mav;
		
		}
		
	}

}

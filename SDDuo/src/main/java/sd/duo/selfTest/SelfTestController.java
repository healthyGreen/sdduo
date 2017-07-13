package sd.duo.selfTest;

import java.util.List;

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

	//��
	@RequestMapping(value="/self/selfWrite.do", method=RequestMethod.GET)
	public ModelAndView selfTestForm(HttpServletRequest request) {
		
		ModelAndView mav = new ModelAndView();
		mav.addObject("selfModel", new SelfTestModel());
		mav.setViewName("self");
		return mav;
	}
	
	
	
	// �ڰ����� ���� �Է�
	@RequestMapping(value="/self/selfWrite.do", method=RequestMethod.POST)
	public ModelAndView selfTestPro(SelfTestModel selfModel, HttpServletRequest requeset,
			HttpSession session)throws Exception{
		//System.out.println("111");
		
		ModelAndView mav = new ModelAndView();
		
		String id;
		String t_category;
		
		id = (String)session.getAttribute("session_member_id");

		
		id = requeset.getParameter("m_id").toString(); // ���Ǿ��̵�� ���ϸ� �� ����Ʈ ������ �߱⶧���� ���߿� ���Ǿ��̵�� �ٲܰ�
		t_category = (String)requeset.getParameter("category");
		
		//System.out.println("222"+cg+id);
	//System.out.println("3333"+selfModel.getT_score());
		
/*		String sc = requeset.getParameter("t_score");
		
		int score = Integer.parseInt(sc);*/

		
		/*if(t_category.equals("1")){
		
			//System.out.println("111111"+selfModel.getCount());
			//System.out.println("3333333"+selfModel.getT_score());
			
			int count = selfService.check1(id);
			
		
			
			System.out.println("ī��Ʈ"+count);
			
			if(count != 0){
			selfService.selfModify1(selfModel);
			
			mav.setViewName("self");
		
			return mav;
			
			}else{
				
				
				selfService.selfWrite1(selfModel);
				
				mav.setViewName("self");
			
				return mav;
				
			}
			
			
		}*/
		mav.setViewName("self");
		
		return mav;
		
	}	
		
	}

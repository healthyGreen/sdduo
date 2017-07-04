package sd.duo.consulting;

import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.http.HttpRequest;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import sd.duo.common.Paging;

@Controller
@RequestMapping(value="/consulting")
public class consultingController {
	@Resource
	public consultingService service;
	ModelAndView mv = new ModelAndView();
	
	@RequestMapping(value="/consultingForm.do")
	public String consultingForm(HttpServletRequest request, @ModelAttribute("consulting") consultingModel consultingmodel){
		//boolean reply = false;
		//mv.addObject("reply",reply);
		//mv.setViewName("consultingForm");
		return"consultingForm";
	}
	
	@RequestMapping(value="/consultingPassForm.do")
	public String consultingPassForm(){
		return "consultingPassForm";
	}
	
	@RequestMapping(value="/consultingPro.do")
	public ModelAndView consultingPro(@ModelAttribute("consulting") consultingModel consultingmodel, BindingResult result, 
			HttpServletRequest request){	
		//consultingmodel.setM_id(id);
	//	consultingmodel.setC_re_status(1); // ´äº¯»óÅÂ ¾ÆÁ÷ ¾È´Þ¸° »óÅÂ

		int c_ref = consultingmodel.getC_ref();
		int c_number = consultingmodel.getC_number();
		
		if(c_ref!=0 && c_number!=0){
			consultingmodel.setC_re_status(2);
			consultingmodel =  service.consultingView(c_number);
		//	System.out.println(consultingmodel);
			consultingmodel.setC_pass(consultingmodel.getC_pass());
			consultingmodel.setC_title("[´äº¯]"+consultingmodel.getC_title());
			consultingmodel.setC_ref(c_ref);
			consultingmodel.setM_id("admin");
			service.insertConsultingReply(consultingmodel);
		}else{
			consultingmodel.setM_id("Asd"); // Â÷ÈÄ¿¡ ·Î±×ÀÎ µÇ¸é session°ªÀ¸·Î ¹Ù²Ü°íÀÓ
			service.insertConsulting(consultingmodel);
		}
		mv.setViewName("redirect:/consulting/consultingList.do");
			return mv;
	/*	
		new consultingValidator().validate(consultingmodel, result);
		if(result.hasErrors()){
			mv.setViewName("consultingForm");
			return mv;
		}*/
		
		//HttpSession session = request.getSession();
		//String id = (String)session.getAttribute("session_member_id");	
	}
	
	@RequestMapping(value="/consultingReply.do")
	public ModelAndView consultingReply(@ModelAttribute("consulting") consultingModel consultingmodel, HttpServletRequest request){
		//int c_ref = Integer.parseInt(request.getParameter("c_ref"));
		int c_number = Integer.parseInt(request.getParameter("c_number"));
		boolean reply = true;
		//mv.setViewName("redirect:/consulting/consultingReply.do?c_number="+c_number);
		//int c_number = Integer.parseInt(request.getParameter("c_number"));
		consultingmodel=service.consultingView(c_number);
		consultingmodel.setC_title("[´äº¯] "+consultingmodel.getC_title());
		mv.addObject("consultingmodel", consultingmodel);
		mv.setViewName("consultingForm");
		return mv;
	}
	@RequestMapping(value="/consultingList.do")
	public ModelAndView consultingList(HttpServletRequest request){
		int currentPage = 0;
		int totalCount = service.totalConsultingNum();
		System.out.println(totalCount);
		int blockCount = 10;
		int blockPage = 5;
		int lastCount = totalCount;
		// String currentPage = request.getParameter("currentPage");
		if(request.getParameter("currentPage")==null || request.getParameter("currentPage").trim().isEmpty() || 
				request.getParameter("currentPage").equals("0")) currentPage = 1;
		else currentPage = Integer.parseInt(request.getParameter("currentPage"));
		
		Paging page = new Paging(currentPage, totalCount, blockCount, blockPage, "consultingList");
		String pagingHtml = page.getPagingHtml().toString();
		List<consultingModel> consultinglist = service.consultingList();
		if (page.getEndCount() < totalCount) {
			 lastCount = page.getEndCount() + 1;
		}
		consultinglist=consultinglist.subList(page.getStartCount(), lastCount);
		mv.addObject("totalCount", totalCount);
		mv.addObject("consultinglist", consultinglist);
		mv.addObject("currentPage",currentPage);
		mv.addObject("html",pagingHtml);
		mv.setViewName("consultingList");
		return mv;
	}
	
	@RequestMapping(value="/consultingModifyForm.do")
	public ModelAndView consultingModifyForm(consultingModel consultingmodel, HttpServletRequest request){
		int consultingNum = Integer.parseInt(request.getParameter("consultingNum"));
		consultingmodel = service.consultingView(consultingNum);
		mv.addObject("consultingModel", consultingmodel);
		mv.setViewName("consultingModForm");
		return mv;
	}
	
	@RequestMapping(value="/consultingModifyPro.do")
	public ModelAndView consultingModifyPro(BindingResult result, HttpServletRequest request, 
			@ModelAttribute("consulting") consultingModel consultingmodel){
		
		new consultingValidator().validate(consultingmodel, result);
		int consultingNum = consultingmodel.getC_number();
		if(result.hasErrors()){
			//mv.addObject("consultingNum", consultingmodel.getC_number());
			mv.setViewName("redirect:/consulting/consultingModifyForm.do?consultingNum="+consultingNum);
			return mv;
		}
		else{
			service.modConsulting(consultingmodel);
			mv.setViewName("redirect:/consulting/consultingView.do?consultingNum="+consultingNum); // ?‹¤?´? ‰?Š¸?•˜ê¸? ì½˜ì„¤?Œ…?œ¼ë¡?(ë²ˆí˜¸ ?„˜ê²¨ì£¼ë©´ì„œ )
			return mv;
		}
	}
	
	@RequestMapping(value="/consultingDeletePro.do")
	public ModelAndView consultingDeletePro(HttpServletRequest request, consultingModel consultingmodel){
		int c_number = Integer.parseInt(request.getParameter("consultingNum"));
		service.deleteConsulting(c_number);
		mv.setViewName("redirect:/consulting/consultingList.do");
		return mv;
	}
	
	@RequestMapping(value="/consultingView.do")
	public ModelAndView consultingView(HttpServletRequest request, consultingModel consultingmodel){
		int c_number = Integer.parseInt(request.getParameter("c_number"));
		consultingmodel= service.consultingView(c_number);
		mv.addObject("consultingmodel", consultingmodel);
		mv.setViewName("consultingView");
		return mv;
		
	}
}

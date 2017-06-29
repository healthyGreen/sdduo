package sd.duo.consulting;

import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

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
public class consultingController {/*
	@Resource
	public consultingService service;
	ModelAndView mv = new ModelAndView();
	
	@RequestMapping(value="/consultingForm.do")
	public String consultingForm(){
		return "consultingForm";
	}
	
	@RequestMapping(value="/consultingPro.do")
	public ModelAndView consultingPro(@ModelAttribute("consulting") consultingModel consultingmodel, BindingResult result){
		
		new consultingValidator().validate(consultingmodel, result);
		if(result.hasErrors()){
			mv.setViewName("consultingForm");
			return mv;
		}
		service.insertConsulting(consultingmodel);
		mv.setViewName("redirect:consultingList.do");
		return mv;
	}
	
	@RequestMapping(value="/consultingList.do")
	public ModelAndView consultingList(HttpServletRequest request){
		int currentPage = 0;
		int totalCount = service.totalConsultingNum();
		int blockCount = 10;
		int blockPage = 5;
		// String currentPage = request.getParameter("currentPage");
		if(request.getParameter("currentPage")==null || request.getParameter("currentPage").trim().isEmpty() || 
				request.getParameter("currentPage").equals("0")) currentPage = 1;
		else currentPage = Integer.parseInt(request.getParameter("currentPage"));
		
		Paging page = new Paging(currentPage, totalCount, blockCount, blockPage, "consultingList");
		String pagingHtml = page.getPagingHtml().toString();
		List<consultingModel> consultinglist = service.consultingList();
		
		mv.addObject("totalCount", totalCount);
		mv.addObject("list", consultinglist);
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
			mv.setViewName("redirect:consultingModifyForm.do?consultingNum="+consultingNum);
			return mv;
		}
		else{
			service.modConsulting(consultingmodel);
			mv.setViewName("redirect:consultingView.do?consultingNum="+consultingNum); // ?ã§?ù¥?†â?ä∏?ïòÍ∏? ÏΩòÏÑ§?åÖ?úºÎ°?(Î≤àÌò∏ ?ÑòÍ≤®Ï£ºÎ©¥ÏÑú )
			return mv;
		}
	}*/
}

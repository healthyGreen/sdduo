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
import sd.duo.member.MemberModel;
import sd.duo.member.MemberService;

@Controller
@RequestMapping(value = "/consulting")
public class consultingController {
	@Resource
	public consultingService service;
	@Resource
	public MemberService memberService;
	ModelAndView mv = new ModelAndView();

	@RequestMapping(value = "/consultingForm.do")
	public ModelAndView consultingForm(HttpServletRequest request) {
		String state = "noting";
		mv.addObject("state", state);
		mv.setViewName("consultingForm");
		return mv;
	}

	@RequestMapping(value = "/consultingPassPro.do")
	public ModelAndView consultingPassPro(HttpServletRequest request, consultingModel consultingmodel) {
		consultingModel resultConsultingModel = new consultingModel();
		/*System.out.println(request.getParameter("c_number"));
		System.out.println(request.getParameter("c_pass"));*/
		consultingmodel.setC_number(Integer.parseInt(request.getParameter("c_number")));
		//consultingmodel.setC_ref(Integer.parseInt(request.getParameter("c_ref")));
		consultingmodel.setC_pass(request.getParameter("c_pass"));

		resultConsultingModel = service.consultingPass(consultingmodel);
		if (resultConsultingModel != null) {
			int c_number = resultConsultingModel.getC_number();
			mv.setViewName("redirect:/consulting/consultingView.do?c_number="+ c_number);
		} else {
			mv.setViewName("consultingPassError");
		}
		return mv;
	}

	@RequestMapping(value = "/consultingPassForm.do")
	public ModelAndView consultingPassForm(HttpServletRequest request) {
		int c_number = Integer.parseInt(request.getParameter("c_number"));
		//System.out.println(c_number);
		mv.addObject("c_number", c_number);
		mv.setViewName("consultingPassForm");
		return mv;
	}

	@RequestMapping(value = "/consultingPro.do")
	public ModelAndView consultingPro(@ModelAttribute("consulting") consultingModel consultingmodel,
			BindingResult result, HttpServletRequest request) {
		// consultingmodel.setM_id(id);
		// consultingmodel.setC_re_status(1); // 답변상태 아직 안달린 상태

		new consultingValidator().validate(consultingmodel, result);
		
		if (result.hasErrors()) {
			mv.setViewName("consultingForm");
			return mv;
		}
		//String who = request.getParameter("who");
		
		int c_ref = consultingmodel.getC_ref();
		int c_number = consultingmodel.getC_number();
		consultingModel c = new consultingModel();
		HttpSession session = request.getSession();
		String id = (String)session.getAttribute("session_member_id");
		if(id==null){
			mv.setViewName("loginForm");
			return mv;
		}
			consultingmodel.setM_id(id);
			if (c_ref != 0) {
			//new consultingModValidator().validate(consultingmodel, result);
				c = service.consultingView(c_number);
				// consultingmodel.setC_re_status(2);
				// System.out.println(consultingmodel);
				consultingmodel.setC_pass(c.getC_pass());
				// consultingmodel.setC_title("[답변]"+consultingmodel.getC_title());
				consultingmodel.setC_ref(c_ref);
				//consultingmodel.setM_id("admin"); // 차후에 로그인 되면 session값으로 바꿀고임
				/*
				 * System.out.println(consultingmodel.getC_title());
				 * System.out.println(consultingmodel.getC_pass());
				 * System.out.println(consultingmodel.getC_ref());
				 * System.out.println(consultingmodel.getM_id());
				 * System.out.println(consultingmodel.getC_content());
				 * 
				 * System.out.println("!");
				 */
				service.insertConsultingReply(consultingmodel);
				service.updateConsultingState(c_number);
			} else {
				/*new consultingValidator22().validate(consultingmodel, result);
				if (result.hasErrors()) {
					mv.setViewName("consultingForm");
					return mv;
				}*/
				//consultingmodel.setM_id("Asd"); // 차후에 로그인 되면 session값으로 바꿀고임
				service.insertConsulting(consultingmodel);
			}
			/*if(who != null){
				mv.setViewName("redirect:/admin/adminConsultingList.do");
			}else{*/
			mv.setViewName("redirect:/consulting/consultingList.do");
		/*	}*/
			return mv;
		}

	/*
	 * 
	 * //HttpSession session = request.getSession(); //String id =
	 * (String)session.getAttribute("session_member_id"); }
	 * 
	 * 
	 * /* @RequestMapping(value="/consultingDelete.do") public ModelAndView
	 * consultingDelete(HttpServletRequest request, consultingModel
	 * consultingmodel){ int c_number =
	 * Integer.parseInt(request.getParameter("c_number")); consultingmodel =
	 * service.consultingView(c_number); service.deleteConsulting(c_number); }
	 */
	@RequestMapping(value = "/consultingReply.do")
	public ModelAndView consultingReply(@ModelAttribute("consulting") consultingModel consultingmodel,
			HttpServletRequest request) {
		/*if(request.getParameter("c_re_status").equals('2')){
			mv.setViewName(viewName);
		}*/
		// int c_ref = Integer.parseInt(request.getParameter("c_ref"));
		int c_number = Integer.parseInt(request.getParameter("c_number"));
		String state = "reply";
		// mv.setViewName("redirect:/consulting/consultingReply.do?c_number="+c_number);
		// int c_number = Integer.parseInt(request.getParameter("c_number"));
		consultingmodel = service.consultingView(c_number);
		// consultingmodel.setC_title("[답변] "+consultingmodel.getC_title());
		mv.addObject("state", state);
		mv.addObject("consultingmodel", consultingmodel);
		mv.setViewName("consultingForm");
		return mv;
	}

	@RequestMapping(value = "/consultingList.do")
	public ModelAndView consultingList(HttpServletRequest request) {
		int currentPage = 0;
		int totalCount = service.totalConsultingNum();
		System.out.println(totalCount);
		int blockCount = 10;
		int blockPage = 5;
		int lastCount = totalCount;
		// String currentPage = request.getParameter("currentPage");
		if (request.getParameter("currentPage") == null || request.getParameter("currentPage").trim().isEmpty()
				|| request.getParameter("currentPage").equals("0"))
			currentPage = 1;
		else
			currentPage = Integer.parseInt(request.getParameter("currentPage"));

		int listOrder = (currentPage - 1) * blockCount;
		Paging page = new Paging(currentPage, totalCount, blockCount, blockPage, "consultingList");
		String pagingHtml = page.getPagingHtml().toString();
		List<consultingModel> consultinglist = service.consultingList();
		if (page.getEndCount() < totalCount) {
			lastCount = page.getEndCount() + 1;
		}
		consultinglist = consultinglist.subList(page.getStartCount(), lastCount);
		mv.addObject("totalCount", totalCount);
		mv.addObject("consultinglist", consultinglist);
		mv.addObject("currentPage", currentPage);
		mv.addObject("listOrder", listOrder);
		mv.addObject("html", pagingHtml);
		mv.setViewName("consultingList");
		return mv;
	}

	/*
	 * @RequestMapping(value="/consultingModifyForm.do") public ModelAndView
	 * consultingModifyForm(consultingModel consultingmodel, HttpServletRequest
	 * request){ int consultingNum =
	 * Integer.parseInt(request.getParameter("consultingNum")); consultingmodel
	 * = service.consultingView(consultingNum); String reply = "false";
	 * mv.addObject("reply", reply); mv.addObject("consultingModel",
	 * consultingmodel); mv.setViewName("consultingModForm"); return mv; }
	 */
	@RequestMapping(value = "/consultingModify.do")
	public ModelAndView consultingModify(HttpServletRequest request, consultingModel consultingModmodel) {
		int c_number = Integer.parseInt(request.getParameter("c_number"));
		consultingModmodel = service.consultingView(c_number);
		String state = "modify";
		mv.addObject("state", state);
		mv.addObject("consultingModmodel", consultingModmodel);
		mv.setViewName("consultingForm");
		// service.modConsulting(consultingmodel);
		return mv;
	}

	@RequestMapping(value = "/consultingModifyPro.do")
	public ModelAndView consultingModifyPro(@ModelAttribute("consulting") consultingModel consultingmodel,
			BindingResult result) {

		 new consultingModValidator().validate(consultingmodel, result);

		/*
		 * //int c_number = Integer.parseInt(request.getParameter("c_number"));
		 * // int c_ref = Integer.parseInt(request.getParameter("c_ref"));
		 * 
		 * // if(c_ref == c_number) // 관리자의 답글 수정인 경우
		 */
		int c_number = consultingmodel.getC_number();
		// System.out.println(c_number);
		// System.out.println("!");
		
		if(result.hasErrors()){ //mv.addObject("consultingNum",
		 consultingmodel.getC_number() ;
		  mv.setViewName("redirect:/consulting/consultingModify.do?c_number="+
		  c_number); return mv; }
		

		service.modConsulting(consultingmodel);
		mv.setViewName("redirect:/consulting/consultingView.do?c_number=" + c_number); // ?떎?씠?젆?듃?븯湲?																// )
		return mv;

	}

	@RequestMapping(value = "/consultingDeletePro.do")
	public ModelAndView consultingDeletePro(HttpServletRequest request, consultingModel consultingmodel) {
		int c_number = Integer.parseInt(request.getParameter("c_number"));
		int c_ref = Integer.parseInt(request.getParameter("c_ref"));
		service.deleteConsulting(c_number);
		service.changeState(c_ref);
		mv.setViewName("redirect:/consulting/consultingList.do");
		return mv;
	}

	@RequestMapping(value = "/consultingView.do")
	public ModelAndView consultingView(HttpServletRequest request, consultingModel consultingmodel) {
		int c_number = Integer.parseInt(request.getParameter("c_number"));
		//int c_ref = Integer.parseInt(request.getParameter("c_ref"));
		
		String isReply = null;
		/*if()
		if(c_number!=c_ref) isReply = "reply"; 
		else isReply = "noReply";*/
		
		consultingmodel = service.consultingView(c_number);
		//mv.addObject("isReply", isReply);
		mv.addObject("consultingmodel", consultingmodel);
		mv.setViewName("consultingView");
		return mv;

	}

	@RequestMapping(value = "/myConsultingList.do")
	public ModelAndView myConsultingList(consultingModel consultingmodel, HttpServletRequest request,
			HttpSession session) {
		String m_id = (String)session.getAttribute("session_member_id");
		int currentPage = 0;
		int totalCount = service.myTotalConsultingNum(m_id);
		/*System.out.println(totalCount);
		System.out.println("1");*/
		int blockCount = 10;
		int blockPage = 5;
		int lastCount = totalCount;
		int totalPage;

		// String currentPage = request.getParameter("currentPage");
		if (request.getParameter("currentPage") == null || request.getParameter("currentPage").trim().isEmpty()
				|| request.getParameter("currentPage").equals("0"))
			currentPage = 1;
		else
			currentPage = Integer.parseInt(request.getParameter("currentPage"));

		int listOrder = (currentPage - 1) * blockCount;
		Paging page = new Paging(currentPage, totalCount, blockCount, blockPage, "myConsultingList");
		String pagingHtml = page.getPagingHtml().toString();
		totalPage = page.getTotalPage();
		List<consultingModel> myConsultinglist = service.myConsultingList(m_id);
		MemberModel m = memberService.getMember(m_id);
		if (page.getEndCount() < totalCount) {
			lastCount = page.getEndCount() + 1;
		}
		myConsultinglist = myConsultinglist.subList(page.getStartCount(), lastCount);
		mv.addObject("member", m);
		mv.addObject("totalCount", totalCount);
		mv.addObject("totalPage", totalPage);
		mv.addObject("myConsultinglist", myConsultinglist);
		mv.addObject("currentPage", currentPage);
		mv.addObject("blockPage", blockPage);
		mv.addObject("listOrder", listOrder);
		mv.addObject("html", pagingHtml);
		mv.setViewName("myConsultingList");
		return mv;
	}
}
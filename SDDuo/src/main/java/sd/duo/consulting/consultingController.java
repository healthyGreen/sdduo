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

	//온라인 상담을 입력하기 위한 폼
	@RequestMapping(value = "/consultingForm.do")
	public ModelAndView consultingForm(HttpServletRequest request) {
		String state = "noting";
		consultingModel consultingmodel = new consultingModel();
		consultingmodel.setC_ref(0);
		mv.addObject("state", state);
		mv.addObject("consultingmodel", consultingmodel);
		mv.setViewName("consultingForm");
		return mv;
	}

	// 온라인 상담 비밀번호 처리 
	@RequestMapping(value = "/consultingPassPro.do")
	public ModelAndView consultingPassPro(HttpServletRequest request, consultingModel consultingmodel) {
		consultingModel resultConsultingModel = new consultingModel();
		consultingmodel.setC_number(Integer.parseInt(request.getParameter("c_number")));
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

	//온라인 상담 상세보기를 위한 비밀번호 입력 폼
	@RequestMapping(value = "/consultingPassForm.do")
	public ModelAndView consultingPassForm(HttpServletRequest request) {
		int c_number = Integer.parseInt(request.getParameter("c_number"));
		mv.addObject("c_number", c_number);
		mv.setViewName("consultingPassForm");
		return mv;
	}
	
	//온라인 상담 입력 처리
	@RequestMapping(value = "/consultingPro.do")
	public ModelAndView consultingPro(@ModelAttribute("consultingmodel") consultingModel consultingmodel,
			BindingResult result, HttpServletRequest request) {
		
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
		
				c = service.consultingView(c_number);
				consultingmodel.setC_pass(c.getC_pass());			
				consultingmodel.setC_ref(c_ref);
				
				service.insertConsultingReply(consultingmodel);
				service.updateConsultingState(c_number);
			} else {
				service.insertConsulting(consultingmodel);
			}	
			mv.setViewName("redirect:/consulting/consultingList.do");
	
			return mv;
		}

	// 온라인 상담 답글 폼
	@RequestMapping(value = "/consultingReply.do")
	public ModelAndView consultingReply(@ModelAttribute("consulting") consultingModel consultingmodel,
			HttpServletRequest request) {
		
		int c_number = Integer.parseInt(request.getParameter("c_number"));
		String state = "reply";
		consultingmodel = service.consultingView(c_number);
		mv.addObject("state", state);
		mv.addObject("consultingmodel", consultingmodel);
		mv.setViewName("consultingForm");
		return mv;
	}

	// 온라인상담 목록
	@RequestMapping(value = "/consultingList.do")
	public ModelAndView consultingList(HttpServletRequest request) {
		int currentPage = 0;
		int totalCount = service.totalConsultingNum();
		System.out.println(totalCount);
		int blockCount = 10;
		int blockPage = 5;
		int lastCount = totalCount;
		int totalPage = 0;
		if (request.getParameter("currentPage") == null || request.getParameter("currentPage").trim().isEmpty()
				|| request.getParameter("currentPage").equals("0"))
			currentPage = 1;
		else
			currentPage = Integer.parseInt(request.getParameter("currentPage"));

		Paging page = new Paging(currentPage, totalCount, blockCount, blockPage, "consultingList");
		String pagingHtml = page.getPagingHtml().toString();
		List<consultingModel> consultinglist = service.consultingList();
		totalPage = page.getTotalPage();
		if (page.getEndCount() < totalCount) {
			lastCount = page.getEndCount() + 1;
		}
		consultinglist = consultinglist.subList(page.getStartCount(), lastCount);
		mv.addObject("totalCount", totalCount);
		mv.addObject("consultinglist", consultinglist);
		mv.addObject("currentPage", currentPage);
		mv.addObject("totalPage", totalPage);
		mv.addObject("html", pagingHtml);
		mv.setViewName("consultingList");
		return mv;
	}


	// 온라인상담 수정을위한 폼
	@RequestMapping(value = "/consultingModify.do")
	public ModelAndView consultingModify(HttpServletRequest request, consultingModel consultingModmodel) {
		int c_number = Integer.parseInt(request.getParameter("c_number"));
		consultingModmodel = service.consultingView(c_number);
		String state = "modify";
		mv.addObject("state", state);
		mv.addObject("consultingModmodel", consultingModmodel);
		mv.setViewName("consultingForm");
		return mv;
	}

	// 온라인상담 수정처리
	@RequestMapping(value = "/consultingModifyPro.do")
	public ModelAndView consultingModifyPro(@ModelAttribute("consulting") consultingModel consultingmodel,
			BindingResult result) {

		 new consultingModValidator().validate(consultingmodel, result);

		int c_number = consultingmodel.getC_number();
		
		if(result.hasErrors()){ //mv.addObject("consultingNum",
		 consultingmodel.getC_number() ;
		  mv.setViewName("redirect:/consulting/consultingModify.do?c_number="+
		  c_number); return mv; }
		

		service.modConsulting(consultingmodel);
		mv.setViewName("redirect:/consulting/consultingView.do?c_number=" + c_number); // ?떎?씠?젆?듃?븯湲?																// )
		return mv;

	}

	// 온라인 상담 삭제처리
	@RequestMapping(value = "/consultingDeletePro.do")
	public ModelAndView consultingDeletePro(HttpServletRequest request, consultingModel consultingmodel) {
		int c_number = Integer.parseInt(request.getParameter("c_number"));
		int c_ref = Integer.parseInt(request.getParameter("c_ref"));
		int c_re_status = Integer.parseInt(request.getParameter("c_re_status"));
		/*System.out.println(c_re_status);
		System.out.println("!");*/
		if(c_re_status == 3){	
			service.deleteConsultingOnlyRep(c_number);
		}else if(c_re_status==2 || c_re_status==1){	
			service.deleteConsulting(c_ref);
		}
			service.changeState(c_ref);
		mv.setViewName("redirect:/consulting/consultingList.do");
		return mv;
	}

	// 온라인 상담 상세보기
	@RequestMapping(value = "/consultingView.do")
	public ModelAndView consultingView(HttpServletRequest request, consultingModel consultingmodel) {
		int c_number = Integer.parseInt(request.getParameter("c_number"));
		String isReply = "noReply";
		
		consultingmodel = service.consultingView(c_number);
		if(consultingmodel.getC_ref() != consultingmodel.getC_number())
			isReply = "reply";
		mv.addObject("isReply", isReply);
		mv.addObject("consultingmodel", consultingmodel);
		mv.setViewName("consultingView");
		return mv;

	}

	// 나의 온라인상담 내역 목록
	@RequestMapping(value = "/myConsultingList.do")
	public ModelAndView myConsultingList(consultingModel consultingmodel, HttpServletRequest request,
			HttpSession session) {
		String m_id = (String)session.getAttribute("session_member_id");
		int currentPage = 0;
		int totalCount = service.myTotalConsultingNum(m_id);
		int totalCount2 = service.myTotalConsultingNum2(m_id);
		int blockCount = 10;
		int blockPage = 5;
		int lastCount = totalCount2;
		int totalPage;

		if (request.getParameter("currentPage") == null || request.getParameter("currentPage").trim().isEmpty()
				|| request.getParameter("currentPage").equals("0"))
			currentPage = 1;
		else
			currentPage = Integer.parseInt(request.getParameter("currentPage"));

		int listOrder = (currentPage - 1) * blockCount;
		Paging page = new Paging(currentPage, totalCount2, blockCount, blockPage, "myConsultingList");
		String pagingHtml = page.getPagingHtml().toString();
		totalPage = page.getTotalPage();
		List<consultingModel> myConsultinglist = service.myConsultingList(m_id);
		MemberModel m = memberService.getMember(m_id);
		if (page.getEndCount() < totalCount2) {
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
package sd.duo.admin;


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

import sd.duo.member.MemberModel;
import sd.duo.member.MemberService;
import sd.duo.common.Paging;
import sd.duo.consulting.consultingModel;
import sd.duo.consulting.consultingService;


@Controller
@RequestMapping("/admin")
public class adminController{
	@Resource
	public consultingService consultingService;
	
	//회원목록 노출 
	@Resource
	private adminService adminService;
	
	//페이징
	int currentPage = 0;
	int totalCount; 
	int blockCount = 10;
	int blockPage = 5;
	private String pagingHtml;  
	private Paging page;
	private int searchNum;
	private String isSearch;
	
	ModelAndView mav = new ModelAndView();
	
	//회원목록코드
	@RequestMapping(value="/adminMemberList.do", method=RequestMethod.GET)
	public ModelAndView memberList(HttpServletRequest request,HttpSession session) throws Exception{
		
		
		
		if(request.getParameter("currentPage") == null || request.getParameter("currentPage").trim().isEmpty() || request.getParameter("currentPage").equals("0")) {
            currentPage = 1;
        } else {
            currentPage = Integer.parseInt(request.getParameter("currentPage"));
        }
		List<MemberModel> memberList=adminService.memberList();
		
		String isSearch = request.getParameter("isSearch");
		
		if(isSearch != null){
			
			searchNum = Integer.parseInt(request.getParameter("searchNum"));
			
			if(searchNum==0)
				memberList = adminService.memberSearch0(isSearch);
		
			
			totalCount = memberList.size();
			System.out.println("size"+memberList.size());
			page = new Paging(currentPage, totalCount, blockCount, blockPage, "adminMemberList");
			pagingHtml = page.getPagingHtml().toString();
		
			int lastCount = totalCount;
		
			if(page.getEndCount() < totalCount)
				lastCount = page.getEndCount() + 1;
			
			memberList = memberList.subList(page.getStartCount(), lastCount);
		
			mav.addObject("totalCount", totalCount);
			mav.addObject("pagingHtml", pagingHtml);
			mav.addObject("currentPage", currentPage);
			mav.addObject("memberList", memberList);
			mav.setViewName("adminMemberList");
			return mav;
		}
		
		memberList = adminService.memberList();
		
		totalCount = memberList.size();
		System.out.println("size"+memberList.size());
		page = new Paging(currentPage, totalCount, blockCount, blockPage, "adminMemberList");
		pagingHtml = page.getPagingHtml().toString();
	
		int lastCount = totalCount;
	
		if(page.getEndCount() < totalCount)
			lastCount = page.getEndCount() + 1;
		
		memberList = memberList.subList(page.getStartCount(), lastCount);
	
		mav.addObject("totalCount", totalCount);
		mav.addObject("pagingHtml", pagingHtml);
		mav.addObject("currentPage", currentPage);
		mav.addObject("memberList", memberList);
		mav.setViewName("adminMemberList");
		return mav;
		
		
		
		
		
	}
	@RequestMapping("adminConsultingList.do")
	public ModelAndView adminConsultingList(HttpServletRequest request) {
		int currentPage = 0;
		int totalCount = consultingService.totalConsultingNum();
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
		Paging page = new Paging(currentPage, totalCount, blockCount, blockPage, "adminConsultingList");
		String pagingHtml = page.getPagingHtml().toString();
		List<consultingModel> consultinglist = consultingService.consultingList();
		if (page.getEndCount() < totalCount) {
			lastCount = page.getEndCount() + 1;
		}
		consultinglist = consultinglist.subList(page.getStartCount(), lastCount);
		mav.addObject("totalCount", totalCount);
		mav.addObject("consultinglist", consultinglist);
		mav.addObject("currentPage", currentPage);
		mav.addObject("listOrder", listOrder);
		mav.addObject("html", pagingHtml);
		mav.setViewName("adminConsultingList");
		return mav;
	}
	
	@RequestMapping("adminConsultingNoReplyList.do")
	public ModelAndView adminConsultingNoReplyList(HttpServletRequest request) {
		int currentPage = 0;
		int totalCount = adminService.totalNoReply();
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
		Paging page = new Paging(currentPage, totalCount, blockCount, blockPage, "adminConsultingNoReplyList");
		String pagingHtml = page.getPagingHtml().toString();
		List<consultingModel> consultinglist = adminService.noReplyList();
		if (page.getEndCount() < totalCount) {
			lastCount = page.getEndCount() + 1;
		}
		consultinglist = consultinglist.subList(page.getStartCount(), lastCount);
		mav.addObject("totalCount", totalCount);
		mav.addObject("consultinglist", consultinglist);
		mav.addObject("currentPage", currentPage);
		mav.addObject("listOrder", listOrder);
		mav.addObject("html", pagingHtml);
		mav.setViewName("adminConsultingNoReplyList");
		return mav;
	}
	@RequestMapping("adminConsultingReplyOkList.do")
	public ModelAndView adminConsultingReplyOkList(HttpServletRequest request) {
		int currentPage = 0;
		int totalCount = adminService.totalReplyOk();
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
		Paging page = new Paging(currentPage, totalCount, blockCount, blockPage, "adminConsultingReplyOkList");
		String pagingHtml = page.getPagingHtml().toString();
		List<consultingModel> consultinglist = adminService.ReplyOkList();
		if (page.getEndCount() < totalCount) {
			lastCount = page.getEndCount() + 1;
		}
		consultinglist = consultinglist.subList(page.getStartCount(), lastCount);
		mav.addObject("totalCount", totalCount);
		mav.addObject("consultinglist", consultinglist);
		mav.addObject("currentPage", currentPage);
		mav.addObject("listOrder", listOrder);
		mav.addObject("html", pagingHtml);
		mav.setViewName("adminConsultingReplyOkList");
		return mav;
	}
	@RequestMapping("adminConsultingView.do")
	public ModelAndView adminConsultingView(HttpServletRequest request, consultingModel consultingmodel) {
		int c_number = Integer.parseInt(request.getParameter("c_number"));
		//int c_ref = Integer.parseInt(request.getParameter("c_ref"));
		
		String isReply = null;
		/*if()
		if(c_number!=c_ref) isReply = "reply"; 
		else isReply = "noReply";*/
		
		consultingmodel = consultingService.consultingView(c_number);
		//mv.addObject("isReply", isReply);
		//mav.addObject("c_ref", c_ref);
		mav.addObject("consultingmodel", consultingmodel);
		mav.setViewName("adminConsultingView");
		return mav;

	}
	
	@RequestMapping("adminConsultingDeletePro.do")
	public ModelAndView adminConsultingDeletePro(HttpServletRequest request, consultingModel consultingmodel) {
		int c_number = Integer.parseInt(request.getParameter("c_number"));
		int c_ref = Integer.parseInt(request.getParameter("c_ref"));
		consultingService.deleteConsulting(c_number);
		consultingService.changeState(c_ref);
		mav.setViewName("redirect:/admin/adminConsultingList.do");
		return mav;
	}
	
	@RequestMapping("adminConsultingModify.do")
	public ModelAndView consultingModify(HttpServletRequest request, consultingModel consultingModmodel) {
		int c_number = Integer.parseInt(request.getParameter("c_number"));
		consultingModmodel = consultingService.consultingView(c_number);
		String state = "modify";
		mav.addObject("state", state);
		mav.addObject("consultingModmodel", consultingModmodel);
		mav.setViewName("adminConsultingReForm");
		// service.modConsulting(consultingmodel);
		return mav;
	}
	@RequestMapping("adminConsultingModifyPo.do")
	public ModelAndView adminConsultingModifyPo(@ModelAttribute("consulting") consultingModel consultingmodel,
			BindingResult result) {

		// new consultingModValidator().validate(consultingmodel, result);

		/*
		 * //int c_number = Integer.parseInt(request.getParameter("c_number"));
		 * // int c_ref = Integer.parseInt(request.getParameter("c_ref"));
		 * 
		 * // if(c_ref == c_number) // 관리자의 답글 수정인 경우
		 */
		int c_number = consultingmodel.getC_number();
		// System.out.println(c_number);
		// System.out.println("!");
		/*
		 * if(result.hasErrors()){ //mv.addObject("consultingNum",
		 * consultingmodel.getC_number());
		 * mv.setViewName("redirect:/consulting/consultingModify.do?c_number="+
		 * c_number); return mv; }
		 */

		consultingService.modConsulting(consultingmodel);
		mav.setViewName("redirect:/admin/adminConsultingView.do?c_number=" + c_number); // ?떎?씠?젆?듃?븯湲?
																						// 肄섏꽕?똿?쑝濡?(踰덊샇
																						// ?꽆寃⑥＜硫댁꽌
																						// )
		return mav;

	}
	@RequestMapping(value = "/adminConsultingReply.do")
	public ModelAndView daminConsultingReply(@ModelAttribute("consulting") consultingModel consultingmodel,
			HttpServletRequest request) {
		/*if(request.getParameter("c_re_status").equals('2')){
			mv.setViewName(viewName);
		}*/
		// int c_ref = Integer.parseInt(request.getParameter("c_ref"));
		int c_number = Integer.parseInt(request.getParameter("c_number"));
		String state = "reply";
		// mv.setViewName("redirect:/consulting/consultingReply.do?c_number="+c_number);
		// int c_number = Integer.parseInt(request.getParameter("c_number"));
		consultingmodel = consultingService.consultingView(c_number);
		// consultingmodel.setC_title("[답변] "+consultingmodel.getC_title());
		mav.addObject("state", state);
		mav.addObject("consultingmodel", consultingmodel);
		mav.setViewName("adminConsultingReForm");
		return mav;
	}
	@RequestMapping(value="adminConsultingRePro.do")
	public ModelAndView consultingPro(@ModelAttribute("consulting") consultingModel consultingmodel,
			BindingResult result, HttpServletRequest request) {
		// consultingmodel.setM_id(id);
		// consultingmodel.setC_re_status(1); // 답변상태 아직 안달린 상태

		//new consultingValidator22().validate(consultingmodel, result);
		//String who = request.getParameter("who");
		
		//int c_ref = consultingmodel.getC_ref();
		int c_number = consultingmodel.getC_number();
		consultingModel c = new consultingModel();
		HttpSession session = request.getSession();
		
			consultingmodel.setM_id((String)session.getAttribute("session_member_id"));
			/*if (c_ref != 0) {
				new consultingModValidator().validate(consultingmodel, result);
				if (result.hasErrors()) {
					mv.setViewName("consultingForm");
					return mv;
				}*/
				c = consultingService.consultingView(c_number);
				// consultingmodel.setC_re_status(2);
				// System.out.println(consultingmodel);
				consultingmodel.setC_pass(c.getC_pass());
				// consultingmodel.setC_title("[답변]"+consultingmodel.getC_title());
				//consultingmodel.setC_ref(c_ref);
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
				consultingService.insertConsultingReply(consultingmodel);
				consultingService.updateConsultingState(c_number);
			/*	service.updateConsultingState(c_number);
			} else {
				new consultingValidator22().validate(consultingmodel, result);
				if (result.hasErrors()) {
					mv.setViewName("consultingForm");
					return mv;
				}
				//consultingmodel.setM_id("Asd"); // 차후에 로그인 되면 session값으로 바꿀고임
				service.insertConsulting(consultingmodel);
			}*/
			/*if(who != null){
				mv.setViewName("redirect:/admin/adminConsultingList.do");
			}else{*/
			mav.setViewName("redirect:/admin/adminConsultingList.do");
		/*	}*/
			return mav;
	}
	
}

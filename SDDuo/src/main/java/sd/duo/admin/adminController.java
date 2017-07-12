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
	
	ModelAndView mav = new ModelAndView();
	
	//회원목록코드
	@RequestMapping("adminMemberList.do")
	public ModelAndView memberList(HttpServletRequest request) throws Exception{
		if(request.getParameter("currentPage") == null || request.getParameter("currentPage").trim().isEmpty() || request.getParameter("currentPage").equals("0")) {
            currentPage = 1;
        } else {
            currentPage = Integer.parseInt(request.getParameter("currentPage"));
        }
		List<MemberModel> memberList=adminService.memberList();
		
		System.out.println(memberList);
		
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
		mav.setViewName("adminConsultingForm");
		// service.modConsulting(consultingmodel);
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
		//String state = "reply";
		// mv.setViewName("redirect:/consulting/consultingReply.do?c_number="+c_number);
		// int c_number = Integer.parseInt(request.getParameter("c_number"));
		consultingmodel = consultingService.consultingView(c_number);
		// consultingmodel.setC_title("[답변] "+consultingmodel.getC_title());
		//mv.addObject("state", state);
		mav.addObject("consultingmodel", consultingmodel);
		mav.setViewName("adminConsultingReForm");
		return mav;
	}
	
}

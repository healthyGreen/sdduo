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
	
	//회占쏙옙占쏙옙占� 占쏙옙占쏙옙 
	@Resource
	private adminService adminService;
	
	//占쏙옙占쏙옙징
	int currentPage = 0;
	int totalCount; 
	int blockCount = 10;
	int blockPage = 5;
	private String pagingHtml;  
	private Paging page;
	private int searchNum;
	private String isSearch;
	
	ModelAndView mav = new ModelAndView();
	
	//회占쏙옙占쏙옙占쏙옙湄占�
	@RequestMapping(value="/adminMemberList.do", method=RequestMethod.GET)
	public ModelAndView memberList(HttpServletRequest request,HttpSession session) throws Exception{
		
		
		int totalMember = 0;
		int totalPage=0;
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
		
			totalMember = adminService.totalMemberSearch(isSearch);
			totalCount = memberList.size();
			System.out.println("size"+memberList.size());
			page = new Paging(currentPage, totalCount, blockCount, blockPage, "adminMemberList");
			pagingHtml = page.getPagingHtml().toString();
		
			int lastCount = totalCount;
		
			if(page.getEndCount() < totalCount)
				lastCount = page.getEndCount() + 1;
			totalPage = page.getTotalPage();
			memberList = memberList.subList(page.getStartCount(), lastCount);
			mav.addObject("totalMember", totalMember);
			mav.addObject("totalCount", totalCount);
			mav.addObject("pagingHtml", pagingHtml);
			mav.addObject("totalPage", totalPage);
			mav.addObject("currentPage", currentPage);
			mav.addObject("memberList", memberList);
			mav.setViewName("adminMemberList");
			return mav;
		}
		
		memberList = adminService.memberList();
		totalMember = adminService.totalMember();
		totalCount = memberList.size();
		System.out.println("size"+memberList.size());
		page = new Paging(currentPage, totalCount, blockCount, blockPage, "adminMemberList");
		pagingHtml = page.getPagingHtml().toString();
	
		int lastCount = totalCount;
	
		if(page.getEndCount() < totalCount)
			lastCount = page.getEndCount() + 1;
		
		totalPage = page.getTotalPage();
		memberList = memberList.subList(page.getStartCount(), lastCount);
		
		mav.addObject("totalMember", totalMember);
		mav.addObject("totalCount", totalCount);
		mav.addObject("pagingHtml", pagingHtml);
		mav.addObject("totalPage", totalPage);
		mav.addObject("currentPage", currentPage);
		mav.addObject("memberList", memberList);
		mav.setViewName("adminMemberList");
		return mav;	
	}
	
	// 관리자 페이지 전체 온라인상담 목록
	@RequestMapping("adminConsultingList.do")
	public ModelAndView adminConsultingList(HttpServletRequest request) {
		int currentPage = 0;
		int totalPage=0;
		int totalCount = consultingService.totalConsultingNum();
		System.out.println(totalCount);
		int blockCount = 10;
		int blockPage = 5;
		int lastCount = totalCount;
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
		totalPage = page.getTotalPage();
		consultinglist = consultinglist.subList(page.getStartCount(), lastCount);
		mav.addObject("totalCount", totalCount);
		mav.addObject("totalPage", totalPage);
		mav.addObject("consultinglist", consultinglist);
		mav.addObject("currentPage", currentPage);
		mav.addObject("listOrder", listOrder);
		mav.addObject("html", pagingHtml);
		mav.setViewName("adminConsultingList");
		return mav;
	}
	
	// 관리자 페이지 답글 대기중인 온라인상담 목록
	@RequestMapping("adminConsultingNoReplyList.do")
	public ModelAndView adminConsultingNoReplyList(HttpServletRequest request) {
		int currentPage = 0;
		int totalPage=0;
		int totalCount = adminService.totalNoReply();
		System.out.println(totalCount);
		int blockCount = 10;
		int blockPage = 5;
		int lastCount = totalCount;
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
		totalPage = page.getTotalPage();
		consultinglist = consultinglist.subList(page.getStartCount(), lastCount);
		mav.addObject("totalCount", totalCount);
		mav.addObject("totalPage", totalPage);
		mav.addObject("consultinglist", consultinglist);
		mav.addObject("currentPage", currentPage);
		mav.addObject("listOrder", listOrder);
		mav.addObject("html", pagingHtml);
		mav.setViewName("adminConsultingNoReplyList");
		return mav;
	}
	
	// 관리자 페이지 답글 확인 된 온라인상담 목록
	@RequestMapping("adminConsultingReplyOkList.do")
	public ModelAndView adminConsultingReplyOkList(HttpServletRequest request) {
		int currentPage = 0;
		int totalPage = 0;
		int totalCount = adminService.totalReplyOk();
		System.out.println(totalCount);
		int blockCount = 10;
		int blockPage = 5;
		int lastCount = totalCount;
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
		totalPage = page.getTotalPage();
		consultinglist = consultinglist.subList(page.getStartCount(), lastCount);
		mav.addObject("totalCount", totalCount);
		mav.addObject("totalPage", totalPage);
		mav.addObject("consultinglist", consultinglist);
		mav.addObject("currentPage", currentPage);
		mav.addObject("listOrder", listOrder);
		mav.addObject("html", pagingHtml);
		mav.setViewName("adminConsultingReplyOkList");
		return mav;
	}
	
	// 관리자 페이지 온라인 상담 상세보기
	@RequestMapping("adminConsultingView.do")
	public ModelAndView adminConsultingView(HttpServletRequest request, consultingModel consultingmodel) {
		int c_number = Integer.parseInt(request.getParameter("c_number"));
		
		String isReply = null;
		
		consultingmodel = consultingService.consultingView(c_number);
		mav.addObject("consultingmodel", consultingmodel);
		mav.setViewName("adminConsultingView");
		return mav;

	}
	
	// 관리자 페이지 온라인상담 삭제 처리
	@RequestMapping("adminConsultingDeletePro.do")
	public ModelAndView adminConsultingDeletePro(HttpServletRequest request, consultingModel consultingmodel) {
		int c_number = Integer.parseInt(request.getParameter("c_number"));
		int c_ref = Integer.parseInt(request.getParameter("c_ref"));
		int c_re_status = Integer.parseInt(request.getParameter("c_re_status"));
		/*System.out.println(c_re_status);
		System.out.println("!");*/
		if(c_re_status == 3){	
			consultingService.deleteConsultingOnlyRep(c_number);
		}else if(c_re_status==2 || c_re_status==1){	
			consultingService.deleteConsulting(c_ref);
		}
		//consultingService.deleteConsulting(c_ref);
		consultingService.changeState(c_ref);
		mav.setViewName("redirect:/admin/adminConsultingList.do");
		return mav;
	}
	
	// 관리자 페이지 온라인상담 수정 입력 폼
	@RequestMapping("adminConsultingModify.do")
	public ModelAndView consultingModify(HttpServletRequest request, consultingModel consultingModmodel) {
		int c_number = Integer.parseInt(request.getParameter("c_number"));
		consultingModmodel = consultingService.consultingView(c_number);
		String state = "modify";
		mav.addObject("state", state);
		mav.addObject("consultingModmodel", consultingModmodel);
		mav.setViewName("adminConsultingReForm");
		return mav;
	}
	
	// 관리자 페이지 온라인상담 수정 처리
	@RequestMapping("adminConsultingModifyPro.do")
	public ModelAndView adminConsultingModifyPro(@ModelAttribute("consulting") consultingModel consultingmodel,
			BindingResult result) {

		int c_number = consultingmodel.getC_number();
		consultingService.modConsulting(consultingmodel);
		mav.setViewName("redirect:/admin/adminConsultingView.do?c_number=" + c_number);																																																											
		return mav;
	}
	
	// 관리자 페이지 온라인상담 답글 폼
	@RequestMapping(value = "/adminConsultingReply.do")
	public ModelAndView adminConsultingReply(@ModelAttribute("consulting") consultingModel consultingmodel,
			HttpServletRequest request) {
		
		int c_number = Integer.parseInt(request.getParameter("c_number"));
		String state = "reply";	
		consultingmodel = consultingService.consultingView(c_number);
		mav.addObject("state", state);
		mav.addObject("consultingmodel", consultingmodel);
		mav.setViewName("adminConsultingReForm");
		return mav;
	}
	
	// 관리자 페이지 온라인상담 답글 처리
	@RequestMapping(value="adminConsultingRePro.do")
	public ModelAndView consultingPro(@ModelAttribute("consulting") consultingModel consultingmodel,
			BindingResult result, HttpServletRequest request) {
		
		int c_number = consultingmodel.getC_number();
		consultingModel c = new consultingModel();
		HttpSession session = request.getSession();
		
			consultingmodel.setM_id((String)session.getAttribute("session_member_id"));
				c = consultingService.consultingView(c_number);
				
				consultingmodel.setC_pass(c.getC_pass());
				consultingService.insertConsultingReply(consultingmodel);
				consultingService.updateConsultingState(c_number);	
			mav.setViewName("redirect:/admin/adminConsultingList.do");
			return mav;
	}
}

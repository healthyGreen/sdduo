package sd.duo.reserve;

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

import sd.duo.member.MemberModel;
import sd.duo.member.MemberService;
import sd.duo.common.Paging;
import javax.servlet.http.HttpSession;



@Controller
@RequestMapping(value="/Reserve")
public class ReserController {
	
	@Resource
	public ReserService reserService;
	 @Resource
	   public MemberService memberService;

	
	private int currentPage = 1;
	private int totalCount;
	private int blockCount = 10;
	private int blockPage = 5;
	private String pagingHtml;
	private Paging paging;
	ModelAndView mv = new ModelAndView();
	
	   //개인예약 리스트
	   @RequestMapping(value="/OneReserList.do", method = RequestMethod.GET)
	   public ModelAndView oneReserList(HttpServletRequest request){
	      
	      ModelAndView mv = new ModelAndView();
	      
	      List<OneReserModel> oneReserList = reserService.oneReserList();
	      
	      if(request.getParameter("currentPage") == null || request.getParameter("currentPage").trim().isEmpty()
	            || request.getParameter("currentPage").equals("0")){
	         currentPage = 1;
	      }
	      else{
	         currentPage = Integer.parseInt(request.getParameter("currentPage"));
	      }
	      
	      totalCount = oneReserList.size();
	      
	      paging = new Paging(currentPage, totalCount, blockCount, blockPage, "OneReserList");
	      pagingHtml = paging.getPagingHtml().toString();
	      
	      int lastCount = totalCount;
	      if(paging.getEndCount() < totalCount){
	         lastCount = paging.getEndCount() + 1;
	      }
	      
	      oneReserList = oneReserList.subList(paging.getStartCount(), lastCount);
	      
	      
	      mv.addObject("list", oneReserList);
	      mv.addObject("currentPage", currentPage);
	      mv.addObject("pagingHtml", pagingHtml);
	      mv.addObject("totalCount", totalCount);
	      
	      mv.setViewName("oneReserList");
	      
	      return mv;
	      
	   }
	
	//그룹예약 리스트
	@RequestMapping(value="/GrReserList.do",method = RequestMethod.GET)
	public ModelAndView GrReserList(HttpServletRequest request){
		ModelAndView mv = new ModelAndView();
		
		List<GroupReserModel> GrReserList = reserService.GrReserList();
		
		if (request.getParameter("currentPage") == null || request.getParameter("currentPage").trim().isEmpty()
				|| request.getParameter("currentPage").equals("0")) {
			currentPage = 1;
		}
		else {
			currentPage = Integer.parseInt(request.getParameter("currentPage"));
		}
		
		totalCount = GrReserList.size();
		
		paging = new Paging(currentPage, totalCount, blockCount, blockPage, "GrReserList");
		pagingHtml = paging.getPagingHtml().toString();
		
		int lastCount = totalCount;
		if (paging.getEndCount() < totalCount) {
			lastCount = paging.getEndCount() + 1;
		}

		GrReserList = GrReserList.subList(paging.getStartCount(), lastCount);
		

		
		
		mv.addObject("list", GrReserList);
		mv.addObject("currentPage", currentPage);
		mv.addObject("pagingHtml", pagingHtml);
		mv.addObject("totalCount", totalCount);
		
		System.out.println(GrReserList.size());
		
		
		mv.setViewName("groupReserList");
		return mv;
	}
	
	//개인예약 폼 출력
	@RequestMapping(value="/OneReserveForm.do", method = RequestMethod.GET)
	public String oneReserForm() {
		
		return "oneReserForm";
	}
	
	//개인예약 처리
	@RequestMapping(value="/OneReserveForm.do", method = RequestMethod.POST)
	public ModelAndView oneReserPro(@ModelAttribute("oneReserModel") OneReserModel oneReserModel, BindingResult result,
			HttpSession session){
		
		/*new OneReserValidator().validate(oneReserModel, result);
		if(result.hasErrors()){
			mv.setViewName("oneReserForm");
			return mv;
		}*/
		
		String m_id = (String) session.getAttribute("session_member_id");
		if(m_id==null){
			mv.setViewName("loginForm");
			return mv;
		}
		
		String pr_reason = oneReserModel.getPr_reason().replaceAll("\r\n", "<br />");
		oneReserModel.setPr_reason(pr_reason);
		OneReserModel one=reserService.timeCheck(oneReserModel);

		if(one == null)
		{
			reserService.insertOneReser(oneReserModel);
		}else
		{
			mv.setViewName("reservation/oneReserError");
			return mv;
		}
		memberService.couponSet(m_id);
		mv.setViewName("redirect:/Reserve/OneReserList.do");
		return mv;
	}
	
	//그룹예약 폼 출력
	@RequestMapping(value="/GroupReserveForm.do", method = RequestMethod.GET)
	public String groupReserForm(){
		
		return "groupReserForm";
	}
	
	//그륩예약 처리
		@RequestMapping(value="/GroupReserveForm.do", method = RequestMethod.POST)
		public ModelAndView groupReserPro(@ModelAttribute("groupReserModel") GroupReserModel groupReserModel, BindingResult result,
				HttpSession session){
			
			
			/*new ReserValidator().validate(groupReserModel, result);
			if(result.hasErrors()){
				mv.setViewName("/reservation/groupReserForm");
				return mv;
			}*/
			
			String m_id = (String) session.getAttribute("session_member_id");
			
			if(m_id==null){
				mv.setViewName("loginForm");
				return mv;
			}
			GroupReserModel group=reserService.timeCheck(groupReserModel);

			if(group == null)
			{
				reserService.insertGroupReser(groupReserModel);
			}else
			{
				mv.setViewName("reservation/groupReserError");
				return mv;
			}
			memberService.couponSet(m_id);
			mv.setViewName("redirect:/Reserve/GrReserList.do");
			return mv;
		}
		//마이페이지 개인예약 리스트
		 @RequestMapping(value = "/myOneReserList.do")
			public ModelAndView myOneReserList(OneReserModel oneReserMoedel, HttpServletRequest request,
					HttpSession session) {
				String m_id = session.getAttribute("session_member_id").toString();
				MemberModel m = new MemberModel();//占쎈뼊
	            m=memberService.getMember(m_id);//占쎈뼊
				int currentPage = 0;
				int totalCount = reserService.myTotalReserNum(m_id);
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
				Paging page = new Paging(currentPage, totalCount, blockCount, blockPage, "myReserList");
				String pagingHtml = page.getPagingHtml().toString();
				totalPage = page.getTotalPage();
				List<OneReserModel> myOneReserlist = reserService.myOneReserList(m_id);
				if (page.getEndCount() < totalCount) {
					lastCount = page.getEndCount() + 1;
				}
				System.out.println(page.getStartCount());
				System.out.println(lastCount);
				myOneReserlist = myOneReserlist.subList(page.getStartCount(), lastCount);
				mv.addObject("totalCount", totalCount);
				mv.addObject("totalPage", totalPage);
				mv.addObject("list", myOneReserlist);
				mv.addObject("currentPage", currentPage);
				mv.addObject("blockPage", blockPage);
				mv.addObject("listOrder", listOrder);
				mv.addObject("html", pagingHtml);
				mv.addObject("member", m); 
				mv.setViewName("myOneReserList");
				return mv;
			}
		 //마이페이지 그룹예약 리스트
		 @RequestMapping(value = "/myGroupReserList.do")
			public ModelAndView myGroupReserList(OneReserModel oneReserMoedel, HttpServletRequest request,
					HttpSession session) {
				String m_id = session.getAttribute("session_member_id").toString();
				MemberModel m = new MemberModel();
	            m=memberService.getMember(m_id);
				int currentPage = 0;
				int totalCount = reserService.myGroupTotalReserNum(m_id);
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
				Paging page = new Paging(currentPage, totalCount, blockCount, blockPage, "myReserList");
				String pagingHtml = page.getPagingHtml().toString();
				totalPage = page.getTotalPage();
				List<GroupReserModel> myGroupReserlist = reserService.myGroupReserList(m_id);
				if (page.getEndCount() < totalCount) {
					lastCount = page.getEndCount() + 1;
				}
				System.out.println(page.getStartCount());
				System.out.println(lastCount);
				myGroupReserlist = myGroupReserlist.subList(page.getStartCount(), lastCount);
				mv.addObject("totalCount", totalCount);
				mv.addObject("totalPage", totalPage);
				mv.addObject("list2", myGroupReserlist);
				mv.addObject("currentPage", currentPage);
				mv.addObject("blockPage", blockPage);
				mv.addObject("listOrder", listOrder);
				mv.addObject("html", pagingHtml);
				mv.addObject("member", m);
				mv.setViewName("myGroupReserList");
				return mv;
			}
}

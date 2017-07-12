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
	
	   // ���ο��� ����Ʈ
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
	
	//�׷쿹�� ����Ʈ
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
		//System.out.println(paging.getEndCount());
		//System.out.println(totalCount);
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
	
	// ���ο��� ��
	@RequestMapping(value="/OneReserveForm.do", method = RequestMethod.GET)
	public String oneReserForm() {
		
		return "oneReserForm";
	}
	
	// ���ο��� ó��
	@RequestMapping(value="/OneReserveForm.do", method = RequestMethod.POST)
	public ModelAndView oneReserPro(@ModelAttribute("oneReserModel") OneReserModel oneReserModel, BindingResult result,
			HttpSession session){
		
		/*new OneReserValidator().validate(oneReserModel, result);
		if(result.hasErrors()){
			mv.setViewName("oneReserForm");
			return mv;
		}*/
		
		String m_id = (String) session.getAttribute("session_member_id");
		System.out.println(m_id);
		
		String pr_reason = oneReserModel.getPr_reason().replaceAll("\r\n", "<br />");
		oneReserModel.setPr_reason(pr_reason);

		reserService.insertOneReser(oneReserModel);
		memberService.couponSet(m_id);
		mv.setViewName("redirect:/Reserve/OneReserList.do");
		return mv;
	}
	
	// �׷쿹�� ��
	@RequestMapping(value="/GroupReserveForm.do", method = RequestMethod.GET)
	public String groupReserForm(){
		
		return "groupReserForm";
	}
	
	// �׷쿹�� ó��
		@RequestMapping(value="/GroupReserveForm.do", method = RequestMethod.POST)
		public ModelAndView groupReserPro(@ModelAttribute("groupReserModel") GroupReserModel groupReserModel, BindingResult result,
				HttpSession session){
			
			
			/*new ReserValidator().validate(groupReserModel, result);
			if(result.hasErrors()){
				mv.setViewName("/reservation/groupReserForm");
				return mv;
			}*/
			
			String m_id = (String) session.getAttribute("session_member_id");
			
			System.out.println(m_id);
			
			reserService.insertGroupReser(groupReserModel);
			memberService.couponSet(m_id);
			mv.setViewName("redirect:/Reserve/GrReserList.do");
			return mv;
		}
		
		 @RequestMapping(value = "/myReserList.do")
			public ModelAndView myReserList(OneReserModel oneReserMoedel, HttpServletRequest request,
					HttpSession session) {
				String m_id = session.getAttribute("session_member_id").toString();
				MemberModel m = new MemberModel();//단
	            m=memberService.getMember(m_id);//단
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
				List<GroupReserModel> myGroupReserlist = reserService.myGroupReserList(m_id);
				if (page.getEndCount() < totalCount) {
					lastCount = page.getEndCount() + 1;
				}
				myOneReserlist = myOneReserlist.subList(page.getStartCount(), lastCount);
				myGroupReserlist = myGroupReserlist.subList(page.getStartCount(), lastCount);
				mv.addObject("totalCount", totalCount);
				mv.addObject("totalPage", totalPage);
				mv.addObject("list", myOneReserlist);
				mv.addObject("list2", myGroupReserlist);
				mv.addObject("currentPage", currentPage);
				mv.addObject("blockPage", blockPage);
				mv.addObject("listOrder", listOrder);
				mv.addObject("html", pagingHtml);
				mv.addObject("member", m); //단
				mv.setViewName("myReserList");
				return mv;
			}
}

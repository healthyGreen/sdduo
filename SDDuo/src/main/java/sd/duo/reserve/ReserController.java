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

import sd.duo.common.Paging;



@Controller
@RequestMapping(value="/Reserve")
public class ReserController {
	
	@Resource
	public ReserService reserService;
	
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
	      
	      paging = new Paging(currentPage, totalCount, blockCount, blockPage, "oneReserList");
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
		
		paging = new Paging(currentPage, totalCount, blockCount, blockPage, "movieList");
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
	public ModelAndView oneReserPro(@ModelAttribute("oneReserModel") OneReserModel oneReserModel, BindingResult result){
		
		/*new ReserValidator().validate(oneReserModel, result);
		if(result.hasErrors()){
			mv.setViewName("/reservation/oneReserForm");
			return mv;
		}*/
		reserService.insertOneReser(oneReserModel);
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
		public ModelAndView groupReserPro(@ModelAttribute("groupReserModel") GroupReserModel groupReserModel, BindingResult result){
			
			
			/*new ReserValidator().validate(groupReserModel, result);
			if(result.hasErrors()){
				mv.setViewName("/reservation/groupReserForm");
				return mv;
			}*/
			reserService.insertGroupReser(groupReserModel);
			mv.setViewName("redirect:/Reserve/GrReserList.do");
			return mv;
		}
		
		 @RequestMapping(value="/myOneReserList.do", method = RequestMethod.GET)
		   public ModelAndView myOneReserList(HttpServletRequest request,  HttpSession session){
		      
			 String m_id = session.getAttribute("session_member_id").toString(); 
			 ModelAndView mv = new ModelAndView();
			 int totalPage;
		      
		      List<OneReserModel> myOneReserList = reserService.myOneReserList(m_id);
		      
		      if(request.getParameter("currentPage") == null || request.getParameter("currentPage").trim().isEmpty()
		            || request.getParameter("currentPage").equals("0")){
		         currentPage = 1;
		      }
		      else{
		         currentPage = Integer.parseInt(request.getParameter("currentPage"));
		      }
		      
		      totalCount = myOneReserList.size();
		      
		      paging = new Paging(currentPage, totalCount, blockCount, blockPage, "oneReserList");
		      pagingHtml = paging.getPagingHtml().toString();
		      totalPage = paging.getTotalPage();
		      
		      int lastCount = totalCount;
		      if(paging.getEndCount() < totalCount){
		         lastCount = paging.getEndCount() + 1;
		      }
		      
		      myOneReserList = myOneReserList.subList(paging.getStartCount(), lastCount);
		      
		      
		      mv.addObject("list", myOneReserList);
		      mv.addObject("currentPage", currentPage);
		      mv.addObject("pagingHtml", pagingHtml);
		      mv.addObject("totalCount", totalCount);
		      mv.addObject("totalPage", totalPage);
		      
		      mv.setViewName("oneReserList");
		      
		      return mv;
		      
		   }
		 
		 @RequestMapping(value="/myGroupReserList.do", method = RequestMethod.GET)
		   public ModelAndView myGroupReserList(HttpServletRequest request){
		      
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
		      
		      paging = new Paging(currentPage, totalCount, blockCount, blockPage, "oneReserList");
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
}

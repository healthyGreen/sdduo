package sd.duo.admin;

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
import sd.duo.reserve.OneReserModel;



@Controller
@RequestMapping(value="/AdminReserve")
public class AdminReserController {
		  /* 
		   @Resource
		   public AdminReserService adminReserService;
		   
		   private int currentPage = 1;
		   private int totalCount;
		   private int blockCount = 10;
		   private int blockPage = 5;
		   private String pagingHtml;
		   private Paging paging;
		   private int centerNum;
		   
		   
		   // 개인예약 리스트
		      @RequestMapping(value="/OneReserList.do", method = RequestMethod.GET)
		      public ModelAndView OneReserList(HttpServletRequest request){
		         
		         ModelAndView mav = new ModelAndView();
		         
		         if(request.getParameter("currentPage") == null || request.getParameter("currentPage").trim().isEmpty() || request.getParameter("currentPage").equals("0")) {
		               currentPage = 1;
		           } else {
		               currentPage = Integer.parseInt(request.getParameter("currentPage"));
		           }

		         List<OneReserModel> oneReserList =;
		         
		         
		            centerNum = Integer.parseInt(request.getParameter("pr_center"));

		            if(centerNum == 1){
		               oneReserList = adminReserService.OneReserList_G();
		            }else if(centerNum == 2){
		            	oneReserList = adminReserService.OneReserList_G();
		            }else if(centerNum == 3){
		            	oneReserList = adminReserService.OneReserList_G();
		            }
		         
		         
		            totalCount = oneReserList.size();
		            paging = new Paging(currentPage, totalCount, blockCount, blockPage, "oneReserList" );
		            pagingHtml = paging.getPagingHtml().toString();
		         
		            int lastCount = totalCount;
		         
		            if(paging.getEndCount() < totalCount)
		               lastCount = paging.getEndCount() + 1;
		            
		            oneReserList = oneReserList.subList(paging.getStartCount(), lastCount);
		         
		           
		           
		            mav.addObject("totalCount", totalCount);
		            mav.addObject("pagingHtml", pagingHtml);
		            mav.addObject("currentPage", currentPage);
		            mav.addObject("oneReserList", oneReserList);
		            mav.setViewName("noticeList");
		            return mav;
		            
					
		      }*/
}
		         

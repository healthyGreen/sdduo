package sd.duo.admin;

import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import sd.duo.admin.AdminOneReserPaging;
import sd.duo.admin.AdminGrReserPaging;
import sd.duo.reserve.GroupReserModel;
import sd.duo.reserve.OneReserModel;



@Controller
@RequestMapping(value="/AdminReserve")
public class AdminReserController {
        
         @Resource
         public AdminReserService adminReserService;
         
         private int currentPage = 1;
         private int totalCount;
         private int blockCount = 10;
         private int blockPage = 5;
         private String pagingHtml;
         private AdminOneReserPaging OnePaging;
         private AdminGrReserPaging GrPaging;
         private String pr_center;
         private String gr_center;
         private int pr_number;
         private String isSearch;
         private String pr_year;
         private String pr_month;
         private String pr_day;
         private String gr_year;
         private String gr_month;
         private String gr_day;
         
         
         // 개인예약 리스트
            @RequestMapping(value="/OneReserList.do", method = RequestMethod.GET)
            public ModelAndView adminOneReserList(HttpServletRequest request) throws Exception {
               
               ModelAndView mav = new ModelAndView();
               
               if(request.getParameter("currentPage") == null || request.getParameter("currentPage").trim().isEmpty() || request.getParameter("currentPage").equals("0")) {
                     currentPage = 1;
                 } else {
                     currentPage = Integer.parseInt(request.getParameter("currentPage"));
                 }
               if(request.getParameter("pr_center") == null || request.getParameter("pr_center").trim().isEmpty() || request.getParameter("pr_center").equals("0")){
            	   pr_center = "1";
               }else{
            	   pr_center = request.getParameter("pr_center");
               }
               if(request.getParameter("isSearch") == null || request.getParameter("isSearch").trim().isEmpty() || request.getParameter("isSearch").equals("0")){
            	   isSearch = "0";
               }else{
            	   isSearch = request.getParameter("isSearch");
               }
               
               
               List<OneReserModel> oneReserList = adminReserService.OneReserList(pr_center);
               
               // 예약날짜순
               if(isSearch.equals("0")){
            	   oneReserList = adminReserService.OneReserListRenew(pr_center);
               }
               // 등록일순
               if(isSearch.equals("1")){
            	   oneReserList = adminReserService.OneReserListNew(pr_center);
               }
               // 예약대기
               if(isSearch.equals("2")){
            	   oneReserList = adminReserService.OneReserListWait(pr_center);
               }
               
              
               
                  totalCount = oneReserList.size();
                  OnePaging = new AdminOneReserPaging(currentPage, totalCount, blockCount, blockPage, "OneReserList", pr_center, isSearch );
                  pagingHtml = OnePaging.getPagingHtml().toString();
               
                  int lastCount = totalCount;
               
                  if(OnePaging.getEndCount() < totalCount)
                     lastCount = OnePaging.getEndCount() + 1;
                  
                  oneReserList = oneReserList.subList(OnePaging.getStartCount(), lastCount);
               
                 
                  mav.addObject("isSearch", isSearch);
                  mav.addObject("pr_center", pr_center);
                  mav.addObject("totalCount", totalCount);
                  mav.addObject("pagingHtml", pagingHtml);
                  mav.addObject("currentPage", currentPage);
                  mav.addObject("oneReserList", oneReserList);
                  mav.setViewName("adminOneReserList");
                  return mav;
                  }
            
            // 개인예약 날짜 검색
            @RequestMapping(value="/OneReserListDay.do", method = RequestMethod.GET)
            public ModelAndView adminOneReserListDay(@ModelAttribute("oneReserModel") OneReserModel oneReserModel, HttpServletRequest request) throws Exception {
                
                ModelAndView mav = new ModelAndView();
                
                if(request.getParameter("currentPage") == null || request.getParameter("currentPage").trim().isEmpty() || request.getParameter("currentPage").equals("0")) {
                      currentPage = 1;
                  } else {
                      currentPage = Integer.parseInt(request.getParameter("currentPage"));
                  }
                if(request.getParameter("pr_center") == null || request.getParameter("pr_center").trim().isEmpty() || request.getParameter("pr_center").equals("0")){
             	   pr_center = "1";
                }else{
             	   pr_center = request.getParameter("pr_center");
                }
                if(request.getParameter("pr_year") == null || request.getParameter("pr_year").trim().isEmpty() || request.getParameter("pr_year").equals("0")){
                	pr_year = "2017";
                }else{
                	pr_year = request.getParameter("pr_year");
                }
                if(request.getParameter("pr_month") == null || request.getParameter("pr_month").trim().isEmpty() || request.getParameter("pr_month").equals("0")){
                	pr_month = "07";
                }else{
                	pr_month = request.getParameter("pr_month");
                }
                if(request.getParameter("pr_day") == null || request.getParameter("pr_day").trim().isEmpty() || request.getParameter("pr_day").equals("0")){
                	pr_day = "04";
                }else{
                	pr_day = request.getParameter("pr_day");
                }
                
                
                List<OneReserModel> oneReserList = adminReserService.OneReserListDay(oneReserModel);
                
               
                   totalCount = oneReserList.size();
                   OnePaging = new AdminOneReserPaging(currentPage, totalCount, blockCount, blockPage, "OneReserListDay", pr_center, pr_year, pr_month, pr_day );
                   pagingHtml = OnePaging.getPagingHtml().toString();
                
                   int lastCount = totalCount;
                
                   if(OnePaging.getEndCount() < totalCount)
                      lastCount = OnePaging.getEndCount() + 1;
                   
                   oneReserList = oneReserList.subList(OnePaging.getStartCount(), lastCount);
                
                  
                   mav.addObject("pr_year", pr_year);
                   mav.addObject("pr_month", pr_month);
                   mav.addObject("pr_day", pr_day);
                   mav.addObject("pr_center", pr_center);
                   mav.addObject("totalCount", totalCount);
                   mav.addObject("pagingHtml", pagingHtml);
                   mav.addObject("currentPage", currentPage);
                   mav.addObject("oneReserList", oneReserList);
                   mav.setViewName("adminOneReserList");
                   return mav;
                   }
            
         // 그룹예약 리스트
            @RequestMapping(value="/GrReserList.do", method = RequestMethod.GET)
            public ModelAndView adminGrReserList(HttpServletRequest request) throws Exception {
               
               ModelAndView mav = new ModelAndView();
               
               if(request.getParameter("currentPage") == null || request.getParameter("currentPage").trim().isEmpty() || request.getParameter("currentPage").equals("0")) {
                     currentPage = 1;
                 } else {
                     currentPage = Integer.parseInt(request.getParameter("currentPage"));
                 }
               if(request.getParameter("gr_center") == null || request.getParameter("gr_center").trim().isEmpty() || request.getParameter("gr_center").equals("0")){
            	   gr_center = "1";
               }else{
            	   gr_center = request.getParameter("gr_center");
               }
               if(request.getParameter("isSearch") == null || request.getParameter("isSearch").trim().isEmpty() || request.getParameter("isSearch").equals("0")){
            	   isSearch = "0";
               }else{
            	   isSearch = request.getParameter("isSearch");
               }
               
               
               List<GroupReserModel> groupReserList = adminReserService.GroupReserList(gr_center);
               
               if(isSearch.equals("0")){
            	   groupReserList = adminReserService.GroupReserListRenew(gr_center);
               }
               if(isSearch.equals("1")){
            	   groupReserList = adminReserService.GroupReserListNew(gr_center);
               }
               if(isSearch.equals("2")){
            	   groupReserList = adminReserService.GroupReserListWait(gr_center);
               }
              
             
                  
               
               
                  totalCount = groupReserList.size();
                  GrPaging = new AdminGrReserPaging(currentPage, totalCount, blockCount, blockPage, "GrReserList", gr_center, isSearch );
                  pagingHtml = GrPaging.getPagingHtml().toString();
               
                  int lastCount = totalCount;
               
                  if(GrPaging.getEndCount() < totalCount)
                     lastCount = GrPaging.getEndCount() + 1;
                  
                  groupReserList = groupReserList.subList(GrPaging.getStartCount(), lastCount);
               
                 
                  mav.addObject("gr_center", gr_center);
                  mav.addObject("totalCount", totalCount);
                  mav.addObject("pagingHtml", pagingHtml);
                  mav.addObject("currentPage", currentPage);
                  mav.addObject("groupReserList", groupReserList);
                  mav.setViewName("adminGrReserList");
                  return mav;
                  }
            
         // 그룹예약 날짜 검색
            @RequestMapping(value="/GrReserListDay.do", method = RequestMethod.GET)
            public ModelAndView adminGrReserListDay(@ModelAttribute("groupReserModel") GroupReserModel groupReserModel, HttpServletRequest request) throws Exception {
                
                ModelAndView mav = new ModelAndView();
                
                if(request.getParameter("currentPage") == null || request.getParameter("currentPage").trim().isEmpty() || request.getParameter("currentPage").equals("0")) {
                      currentPage = 1;
                  } else {
                      currentPage = Integer.parseInt(request.getParameter("currentPage"));
                  }
                if(request.getParameter("gr_center") == null || request.getParameter("gr_center").trim().isEmpty() || request.getParameter("gr_center").equals("0")){
             	   gr_center = "1";
                }else{
             	   gr_center = request.getParameter("gr_center");
                }
                if(request.getParameter("gr_year") == null || request.getParameter("gr_year").trim().isEmpty() || request.getParameter("gr_year").equals("0")){
                	gr_year = "2017";
                }else{
                	gr_year = request.getParameter("gr_year");
                }
                if(request.getParameter("gr_month") == null || request.getParameter("gr_month").trim().isEmpty() || request.getParameter("gr_month").equals("0")){
                	gr_month = "07";
                }else{
                	gr_month = request.getParameter("gr_month");
                }
                if(request.getParameter("gr_day") == null || request.getParameter("gr_day").trim().isEmpty() || request.getParameter("gr_day").equals("0")){
                	gr_day = "04";
                }else{
                	gr_day = request.getParameter("gr_day");
                }
                
                
                List<GroupReserModel> groupReserList = adminReserService.GroupReserListDay(groupReserModel);
                
               
                   totalCount = groupReserList.size();
                   GrPaging = new AdminGrReserPaging(currentPage, totalCount, blockCount, blockPage, "GrReserListDay", gr_center, gr_year, gr_month, gr_day );
                   pagingHtml = OnePaging.getPagingHtml().toString();
                
                   int lastCount = totalCount;
                
                   if(GrPaging.getEndCount() < totalCount)
                      lastCount = GrPaging.getEndCount() + 1;
                   
                   groupReserList = groupReserList.subList(GrPaging.getStartCount(), lastCount);
                
                  
                   mav.addObject("gr_year", gr_year);
                   mav.addObject("gr_month", gr_month);
                   mav.addObject("gr_day", gr_day);
                   mav.addObject("gr_center", gr_center);
                   mav.addObject("totalCount", totalCount);
                   mav.addObject("pagingHtml", pagingHtml);
                   mav.addObject("currentPage", currentPage);
                   mav.addObject("groupReserList", groupReserList);
                   mav.setViewName("adminGrReserList");
                   return mav;
                   }
            
            /*개인예약 상세보기*/
            @RequestMapping(value="/OneReserView.do")
            public ModelAndView adminOneReserView(HttpServletRequest request){
            	
            	ModelAndView mav = new ModelAndView();
            	
            	int pr_number = Integer.parseInt(request.getParameter("pr_number"));
            	String pr_center = request.getParameter("pr_center");
            	System.out.println("pr_number : "+pr_number);
            	OneReserModel OneReserModel = adminReserService.OneReserView(pr_number);

            	mav.addObject("OneReserModel", OneReserModel);
            	//mav.addObject("pr_number", pr_number);
            	//mav.addObject("pr_center", pr_center);
            	mav.setViewName("adminOneReserView");
            	return mav;
            }
            
            /*그룹예약 상세보기*/
            @RequestMapping(value="/GroupReserView.do")
            public ModelAndView adminGrReserView(HttpServletRequest request){
            	
            	ModelAndView mav = new ModelAndView();
            	
            	int gr_number = Integer.parseInt(request.getParameter("gr_number"));
            	String gr_center = request.getParameter("gr_center");
            	System.out.println("gr_number : "+gr_number);
            	GroupReserModel GroupReserModel = adminReserService.GroupReserView(gr_number);

            	mav.addObject("GroupReserModel", GroupReserModel);
            	//mav.addObject("pr_number", pr_number);
            	//mav.addObject("pr_center", pr_center);
            	mav.setViewName("adminGroupReserView");
            	return mav;
            }
            
            // 개인예약 수정처리
            @RequestMapping(value="/OneReserModifyPro.do")
            public ModelAndView adminOneReserModifyPro(@ModelAttribute("OneReserModel") OneReserModel OneReserModel, BindingResult result){
            	
            	ModelAndView mav = new ModelAndView();
            	OneReserModel o = new OneReserModel();
            	int pr_number = OneReserModel.getPr_number();
            	/*String pr_center = OneReserModel.getPr_center();*/
            	
            	adminReserService.OneReserModify(OneReserModel);
            	//System.out.println(n);
            	o = adminReserService.OneReserView(pr_number);
            	pr_center = o.getPr_center();
            	/*mav.addObject(pr_ceeserView(pr_number);
            	//mav.addObject("pr_number",nter, pr_center);*/
            	mav.setViewName("redirect:/AdminReserve/OneReserList.do?pr_center="+pr_center);
            	
            	return mav;
            }
            
         // 그룹예약 수정처리
            @RequestMapping(value="/GrReserModifyPro.do")
            public ModelAndView adminGrReserModifyPro(@ModelAttribute("GroupReserModel") GroupReserModel GroupReserModel, BindingResult result){
            	
            	ModelAndView mav = new ModelAndView();
            	GroupReserModel g = new GroupReserModel();
            	int gr_number = GroupReserModel.getGr_number();
            	/*String pr_center = OneReserModel.getPr_center();*/
            	
            	adminReserService.GroupReserModify(GroupReserModel);
            	//System.out.println(n);
            	g = adminReserService.GroupReserView(gr_number);
            	gr_center = g.getGr_center();
            	/*mav.addObject(pr_ceeserView(pr_number);
            	//mav.addObject("pr_number",nter, pr_center);*/
            	mav.setViewName("redirect:/AdminReserve/GrReserList.do?gr_center="+gr_center);
            	
            	return mav;
            }
            
           //개인예약 취소
            @RequestMapping("AdminOneReserDelete.do")
        	public ModelAndView OnewReserDelete(HttpServletRequest request){
        		
        		ModelAndView mav = new ModelAndView();
        		int pr_number = Integer.parseInt(request.getParameter("pr_number"));
        		adminReserService.OneReserDelete(pr_number);
        		//System.out.println(pr_number);
        		mav.setViewName("redirect:/AdminReserve/OneReserList.do?pr_center="+pr_center);
        		
        		return mav;	
            }
            //그룹예약 취소
            @RequestMapping("AdminGrReserDelete.do")
        	public ModelAndView GrReserDelete(HttpServletRequest request){
        		
        		ModelAndView mav = new ModelAndView();
        		int gr_number = Integer.parseInt(request.getParameter("gr_number"));
        		adminReserService.GrReserDelete(gr_number);
        		mav.setViewName("redirect:/AdminReserve/GrReserList.do?gr_center="+gr_center);
        		
        		return mav;	
            }
            
            
            }

               
            

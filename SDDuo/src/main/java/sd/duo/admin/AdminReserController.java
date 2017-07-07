package sd.duo.admin;

import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import sd.duo.common.Paging;
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
         private Paging paging;
         private String pr_center;
         private String gr_center;
         private int pr_number;
         
         
         // ���ο��� ����Ʈ
            @RequestMapping(value="/OneReserList.do", method = RequestMethod.GET)
            public ModelAndView adminOneReserList(HttpServletRequest request) throws Exception {
               
               ModelAndView mav = new ModelAndView();
               
               if(request.getParameter("currentPage") == null || request.getParameter("currentPage").trim().isEmpty() || request.getParameter("currentPage").equals("0")) {
                     currentPage = 1;
                 } else {
                     currentPage = Integer.parseInt(request.getParameter("currentPage"));
                 }
               
               pr_center = request.getParameter("pr_center");
               
               List<OneReserModel> oneReserList = adminReserService.OneReserList(pr_center);
              
             
                  
               
               
                  totalCount = oneReserList.size();
                  paging = new Paging(currentPage, totalCount, blockCount, blockPage, "oneReserList" );
                  pagingHtml = paging.getPagingHtml().toString();
               
                  int lastCount = totalCount;
               
                  if(paging.getEndCount() < totalCount)
                     lastCount = paging.getEndCount() + 1;
                  
                  oneReserList = oneReserList.subList(paging.getStartCount(), lastCount);
               
                 
                  mav.addObject("pr_center", pr_center);
                  mav.addObject("totalCount", totalCount);
                  mav.addObject("pagingHtml", pagingHtml);
                  mav.addObject("currentPage", currentPage);
                  mav.addObject("oneReserList", oneReserList);
                  mav.setViewName("adminOneReserList");
                  return mav;
                  }
            
            
         // �׷쿹�� ����Ʈ
            @RequestMapping(value="/GrReserList.do", method = RequestMethod.GET)
            public ModelAndView adminGrReserList(HttpServletRequest request) throws Exception {
               
               ModelAndView mav = new ModelAndView();
               
               if(request.getParameter("currentPage") == null || request.getParameter("currentPage").trim().isEmpty() || request.getParameter("currentPage").equals("0")) {
                     currentPage = 1;
                 } else {
                     currentPage = Integer.parseInt(request.getParameter("currentPage"));
                 }
               
               gr_center = request.getParameter("gr_center");
               
               List<GroupReserModel> groupReserList = adminReserService.GroupReserList(gr_center);
              
             
                  
               
               
                  totalCount = groupReserList.size();
                  paging = new Paging(currentPage, totalCount, blockCount, blockPage, "groupReserList" );
                  pagingHtml = paging.getPagingHtml().toString();
               
                  int lastCount = totalCount;
               
                  if(paging.getEndCount() < totalCount)
                     lastCount = paging.getEndCount() + 1;
                  
                  groupReserList = groupReserList.subList(paging.getStartCount(), lastCount);
               
                 
                  mav.addObject("gr_center", gr_center);
                  mav.addObject("totalCount", totalCount);
                  mav.addObject("pagingHtml", pagingHtml);
                  mav.addObject("currentPage", currentPage);
                  mav.addObject("groupReserList", groupReserList);
                  mav.setViewName("adminGrReserList");
                  return mav;
                  }
            
            /*���ο��� �󼼺���*/
            @RequestMapping(value="/OneReserView.do")
            public ModelAndView adminReserView(HttpServletRequest request){
            	
            	ModelAndView mav = new ModelAndView();
            	
            	int pr_number = Integer.parseInt(request.getParameter("pr_number"));
            	/*pr_center = request.getParameter("pr_center");*/
            	System.out.println("pr_number : "+pr_number);
            	OneReserModel OneReserModel = adminReserService.OneReserView(pr_number);

            	mav.addObject("OneReserModel", OneReserModel);
            	mav.addObject("pr_number", pr_number);
            	/*mav.addObject("pr_center", pr_center);*/
            	mav.setViewName("adminOneReserView");
            	return mav;
            }
            }

               
            

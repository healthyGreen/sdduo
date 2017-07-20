package sd.duo.notice;

import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.text.ParseException;
import java.util.Date;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.util.FileCopyUtils;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;
import org.springframework.web.servlet.ModelAndView;

import sd.duo.adminNotice.AdminNoticeModel;
import sd.duo.adminNotice.AdminNoticeService;
import sd.duo.adminNotice.NoticeValidator;
import sd.duo.adminNotice.Paging;
import sd.duo.member.MemberController;

@Controller
@RequestMapping("/notice")
public class NoticeController {
	@Resource
	private AdminNoticeService noticeService;
	private int searchNum;
	private String isSearch;
	//페이징을 위한 변수 설정
		private int currentPage = 1;	 
		private int totalCount; 
		private int totalPage;
		private int blockCount = 10;	 
		private int blockPage = 5; 	 
		private String pagingHtml;  
		private Paging page;
	
		private static final String uploadPath = "C:\\Java\\FINAL\\SDDuo\\src\\main\\webapp\\resources\\upload";
		
		//사용자 리스트 처리(검색)
		@RequestMapping(value="/NoticeList.do", method=RequestMethod.GET)
		public ModelAndView noticeList(HttpServletRequest request,HttpSession session) throws UnsupportedEncodingException{
			
			

			ModelAndView mav = new ModelAndView();
			
			
			if(request.getParameter("currentPage") == null || request.getParameter("currentPage").trim().isEmpty() || request.getParameter("currentPage").equals("0")) {
	            currentPage = 1;
	        } else {
	            currentPage = Integer.parseInt(request.getParameter("currentPage"));
	        }

			List<AdminNoticeModel> adminNoticeList = noticeService.noticeList();
			
			System.out.println("size"+adminNoticeList.size());
			
			
			String isSearch = request.getParameter("isSearch");
			//if(isSearch != null) isSearch = new String(isSearch.getBytes("8859_1"), "UTF-8");
			
			
			if(isSearch != null)
			{
				searchNum = Integer.parseInt(request.getParameter("searchNum"));

				if(searchNum==0)
					adminNoticeList = noticeService.noticeSearch0(isSearch);
				else
					adminNoticeList = noticeService.noticeSearch1(isSearch);
			
				totalCount = adminNoticeList.size();
				page = new Paging(currentPage, totalCount, blockCount, blockPage, "NoticeList", searchNum, isSearch);
				pagingHtml = page.getPagingHtml().toString();
				totalPage = page.getTotalPage();
			
				int lastCount = totalCount;
			
				if(page.getEndCount() < totalCount)
					lastCount = page.getEndCount() + 1;
				
				adminNoticeList = adminNoticeList.subList(page.getStartCount(), lastCount);
			
				mav.addObject("isSearch", isSearch);
				mav.addObject("searchNum", searchNum);
				mav.addObject("totalCount", totalCount);
				mav.addObject("totalPage", totalPage);
				mav.addObject("pagingHtml", pagingHtml);
				mav.addObject("currentPage", currentPage);
				mav.addObject("adminNoticeList", adminNoticeList);
		         
			
				
				
				mav.setViewName("NoticeList");
				
			
				return mav;
			}
			
			adminNoticeList = noticeService.noticeList();
			
			totalCount = adminNoticeList.size();
			
			page = new Paging(currentPage, totalCount, blockCount, blockPage, "NoticeList");
			pagingHtml=page.getPagingHtml().toString();  
			totalPage = page.getTotalPage();
			
			int lastCount = totalCount;
			 
			if (page.getEndCount() < totalCount)
				lastCount = page.getEndCount() + 1;
			 
			adminNoticeList = adminNoticeList.subList(page.getStartCount(), lastCount);
			
			mav.addObject("totalCount", totalCount);
			mav.addObject("pagingHtml", pagingHtml);
			mav.addObject("currentPage", currentPage);
			mav.addObject("totalPage", totalPage);
			mav.addObject("adminNoticeList", adminNoticeList);
		
		
			mav.setViewName("NoticeList");
			
			return mav;
		}
		
		// 공지사항 상세보기
		@RequestMapping("/NoticeView.do")
		public ModelAndView noticeView(HttpServletRequest request, HttpSession session){
			   
			ModelAndView mav = new ModelAndView();
			
		
			
			int n_number = Integer.parseInt(request.getParameter("n_number"));
			
			AdminNoticeModel noticeModel = noticeService.noticeView(n_number);
			
			noticeService.noticeUpdateReadcount(n_number);
			
			mav.addObject("noticeModel", noticeModel);
			
		
				mav.setViewName("NoticeView");
			
			
			return mav;
		}
		
		
		
		
		//공지사항 글쓰기 폼
		@RequestMapping(value="/NoticeWrite.do", method=RequestMethod.GET)
		public ModelAndView noticeForm(HttpServletRequest request) {
			
			ModelAndView mav = new ModelAndView();
			mav.addObject("noticeModel", new AdminNoticeModel());
			mav.setViewName("NoticeForm");
			return mav;
		}
		
		// 공지사항 글쓰기
		@RequestMapping(value="/NoticeWrite.do", method=RequestMethod.POST)
		public ModelAndView noticeWrite(@ModelAttribute("noticeModel") AdminNoticeModel noticeModel, BindingResult result, 
				HttpServletRequest request, HttpSession session,MultipartHttpServletRequest multipartHttpServletRequest)throws Exception{
			
			ModelAndView mav = new ModelAndView();
			new NoticeValidator().validate(noticeModel, result);
			
			if(result.hasErrors()) {
				mav.setViewName("NoticeForm");
				return mav;
			}
			/*줄바꿈*/
			
			String n_content = noticeModel.getN_content().replaceAll("\r\n", "<br />");
			noticeModel.setN_content(n_content);
			
			
			
			//업로드
			MultipartFile multipartFile = multipartHttpServletRequest.getFile("file");
			String filename = multipartFile.getOriginalFilename();
			if (filename != ""){ 
			      noticeModel.setN_sav_image(System.currentTimeMillis()+"_"+multipartFile.getOriginalFilename());
				  String savimagename = System.currentTimeMillis()+"_"+multipartFile.getOriginalFilename();
			      FileCopyUtils.copy(multipartFile.getInputStream(), new FileOutputStream(uploadPath+"/"+savimagename));
			      noticeModel.setN_sav_image(savimagename);
			}else{
			      noticeModel.setN_sav_image("NULL");		
			      }
					
			
			System.out.println("image:"+noticeModel.getN_org_image());
			noticeService.noticeWrite(noticeModel);
				
			mav.setViewName("redirect:NoticeList.do");
					
			return mav;
				
		
		}
		
			
		
		//공지사항 삭제
		@RequestMapping("/NoticeDelete.do")
		public ModelAndView noticeDelete(HttpServletRequest request){
			
			ModelAndView mav = new ModelAndView();
			int n_number = Integer.parseInt(request.getParameter("n_number"));
			noticeService.noticeDelete(n_number);
			mav.setViewName("redirect:NoticeList.do");
			
			return mav;	
		}
		
	
		
		//공지사항 수정폼
		@RequestMapping("/NoticeModify.do")
		public ModelAndView noticeModifyForm(@ModelAttribute("noticeModel") AdminNoticeModel noticeModel, BindingResult result, HttpServletRequest request){
			
			ModelAndView mav = new ModelAndView();
			noticeModel = noticeService.noticeView(noticeModel.getN_number());
			
			String n_content = noticeModel.getN_content().replaceAll("<br />", "\r\n");
			noticeModel.setN_content(n_content);
			
			mav.addObject("noticeModel", noticeModel);
			mav.setViewName("NoticeModify");
			
			return mav;	
		}
		
		//공지사항 수정
		@RequestMapping("/NoticeModifySuccess.do")
		public ModelAndView reviewModify(@ModelAttribute("noticeModel") AdminNoticeModel noticeModel, MultipartHttpServletRequest multipartHttpServletRequest){
			
			ModelAndView mav = new ModelAndView();
	        
	        /*줄바꿈*/
			String n_content = noticeModel.getN_content().replaceAll("\r\n", "<br />");
			noticeModel.setN_content(n_content);
		    
	        if (multipartHttpServletRequest.getFile("file") != null){
	 		//메인 상품이미지
	        	MultipartFile multipartFile = multipartHttpServletRequest.getFile("file");
	        	String filename = multipartFile.getOriginalFilename();
		        	if (filename != ""){ 
		        		noticeModel.setN_sav_image(System.currentTimeMillis()+"_"+multipartFile.getOriginalFilename());					    
					    String savimagename = System.currentTimeMillis()+"_"+multipartFile.getOriginalFilename();				    
				        try {
							FileCopyUtils.copy(multipartFile.getInputStream(), new FileOutputStream(uploadPath+"/"+savimagename));
						} catch (FileNotFoundException e) {
							// TODO Auto-generated catch block
							e.printStackTrace();
						} catch (IOException e) {
							// TODO Auto-generated catch block
							e.printStackTrace();
						}			            	        
		        	}/*else{
		        		reviewModel.setImagefile_savname("NULL");
		        	}*/
	        }
	        else{
	        	noticeModel.setN_sav_image(multipartHttpServletRequest.getParameter("n_sav_image"));
	        }
	        
	        noticeService.noticeModify(noticeModel);
			
			mav.addObject("n_number", noticeModel.getN_number());
			mav.setViewName("redirect:NoticeView.do");
			return mav;	
		}
		
		
		@RequestMapping("/Delete.do")
		public ModelAndView userDel(HttpServletRequest request) throws Exception {
		
		ModelAndView mav = new ModelAndView();
		
		String[] strArry= request.getParameterValues("checkRow");
			
		
		for (int i=0; i<strArry.length; i++) {
			noticeService.noticeDelete(Integer.parseInt(strArry[i]));
		}
		
		mav.setViewName("redirect:NoticeList.do");
		
		return mav;	
		
		}
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
}

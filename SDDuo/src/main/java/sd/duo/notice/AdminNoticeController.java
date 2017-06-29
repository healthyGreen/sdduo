package sd.duo.notice;

import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.text.ParseException;
import java.util.Date;
import java.util.List;

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

import sd.duo.notice.AdminNoticeModel;
import sd.duo.notice.AdminNoticeService;
import sd.duo.notice.Paging;
import sd.duo.notice.NoticeValidator;

@Controller
public class AdminNoticeController {

	@Resource
	private AdminNoticeService noticeService;
	private int searchNum;
	private String isSearch;
	//페이징을 위한 변수 설정
		private int currentPage = 1;	 
		private int totalCount; 		 
		private int blockCount = 10;	 
		private int blockPage = 5; 	 
		private String pagingHtml;  
		private Paging page;
		
	private static final String uploadPath = "C:\\Java\\FINAL\\SDDuo\\src\\main\\webapp\\WEB-INF\\upload";

	
	
	//리스트 처리(검색)
		@RequestMapping(value="/notice/noticeList.do", method=RequestMethod.GET)
		public ModelAndView noticeList(HttpServletRequest request) throws UnsupportedEncodingException{
			
			ModelAndView mav = new ModelAndView();
			
			/*if(request.getParameter("currentPage") == null || request.getParameter("currentPage").trim().isEmpty() || request.getParameter("currentPage").equals("0")) {
	            currentPage = 1;
	        } else {
	            currentPage = Integer.parseInt(request.getParameter("currentPage"));
	        }
*/
			List<AdminNoticeModel> noticeList = noticeService.noticeList();
			
			System.out.println("size"+noticeList.size());
			
			
		/*	String isSearch = request.getParameter("isSearch");
			if(isSearch != null) isSearch = new String(isSearch.getBytes("8859_1"), "UTF-8");
			
			
			if(isSearch != null)
			{
				searchNum = Integer.parseInt(request.getParameter("searchNum"));

				if(searchNum==0)
					noticeList = noticeService.noticeSearch0(isSearch);
				else
					noticeList = noticeService.noticeSearch1(isSearch);
			
				totalCount = noticeList.size();
				page = new Paging(currentPage, totalCount, blockCount, blockPage, "noticeList", searchNum, isSearch);
				pagingHtml = page.getPagingHtml().toString();
			
				int lastCount = totalCount;
			
				if(page.getEndCount() < totalCount)
					lastCount = page.getEndCount() + 1;
				
				noticeList = noticeList.subList(page.getStartCount(), lastCount);
			
				mav.addObject("isSearch", isSearch);
				mav.addObject("searchNum", searchNum);
				mav.addObject("totalCount", totalCount);
				mav.addObject("pagingHtml", pagingHtml);
				mav.addObject("currentPage", currentPage);
				mav.addObject("noticeList", noticeList);
				mav.setViewName("noticeList");
				return mav;
			}*/
			
			/*noticeList = noticeService.noticeList();*/
			
			/*totalCount = noticeList.size();
			
			page = new Paging(currentPage, totalCount, blockCount, blockPage, "noticeList");
			pagingHtml=page.getPagingHtml().toString();  
			
			int lastCount = totalCount;
			 
			if (page.getEndCount() < totalCount)
				lastCount = page.getEndCount() + 1;
			 
			noticeList = noticeList.subList(page.getStartCount(), lastCount);
			
			mav.addObject("totalCount", totalCount);
			mav.addObject("pagingHtml", pagingHtml);
			mav.addObject("currentPage", currentPage);*/
			mav.addObject("noticeList", noticeList);
			mav.setViewName("noticeList");
			return mav;
		}
	
	//공지사항 상세보기
	@RequestMapping("/notice/noticeView.do")
	public ModelAndView noticeView(HttpServletRequest request){
		   
		ModelAndView mav = new ModelAndView();
		
		int n_number = Integer.parseInt(request.getParameter("n_number"));
		
		AdminNoticeModel noticeModel = noticeService.noticeView(n_number);
		
		noticeService.noticeUpdateReadcount(n_number);
		
		mav.addObject("noticeModel", noticeModel);
		mav.setViewName("noticeView");
		
		return mav;
	}
	
	//공지사항 글쓰기 폼
	@RequestMapping(value="/notice/noticeWrite.do", method=RequestMethod.GET)
	public ModelAndView noticeForm(HttpServletRequest request) {
		
		ModelAndView mav = new ModelAndView();
		mav.addObject("noticeModel", new AdminNoticeModel());
		mav.setViewName("noticeForm");
		return mav;
	}
	
	//공지사항 글쓰기
	@RequestMapping(value="/notice/noticeWrite.do", method=RequestMethod.POST)
	public ModelAndView noticeWrite(@ModelAttribute("noticeModel") AdminNoticeModel noticeModel, BindingResult result, 
			HttpServletRequest request, HttpSession session,MultipartHttpServletRequest multipartHttpServletRequest)throws Exception{
		
		ModelAndView mav = new ModelAndView();
		
		new NoticeValidator().validate(noticeModel, result);
		
		if(result.hasErrors()) {
			mav.setViewName("noticeForm");
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
				
		noticeService.noticeWrite(noticeModel);
			
		mav.setViewName("redirect:noticeList.do");
				
		return mav;
			
	
	}
	
		
	
	//공지사항 삭제
	@RequestMapping("/notice/noticeDelete.do")
	public ModelAndView noticeDelete(HttpServletRequest request){
		
		ModelAndView mav = new ModelAndView();
		int n_number = Integer.parseInt(request.getParameter("n_number"));
		noticeService.noticeDelete(n_number);
		mav.setViewName("redirect:noticeList.do");
		
		return mav;	
	}
	
	//공지사항 수정폼
	@RequestMapping("/notice/noticeModify.do")
	public ModelAndView noticeModifyForm(@ModelAttribute("noticeModel") AdminNoticeModel noticeModel, BindingResult result, HttpServletRequest request){
		
		ModelAndView mav = new ModelAndView();
		noticeModel = noticeService.noticeView(noticeModel.getN_number());
		
		String content = noticeModel.getN_content().replaceAll("<br />", "\r\n");
		noticeModel.setN_content(content);
		
		mav.addObject("noticeModel", noticeModel);
		mav.setViewName("noticeModify");
		
		return mav;	
	}
	
	//공지사항 수정
	@RequestMapping("/notice/noticeModifySuccess.do")
	public ModelAndView noticeModify(@ModelAttribute("noticeModel") AdminNoticeModel noticeModel, HttpServletRequest request){
		
		ModelAndView mav = new ModelAndView("redirect:noticeView.do");
		
		String content = noticeModel.getN_content().replaceAll("\r\n", "<br />");
		noticeModel.setN_content(content);
		
		noticeService.noticeModify(noticeModel);
		
		mav.addObject("n_number", noticeModel.getN_number());
		
		return mav;	
	}
}

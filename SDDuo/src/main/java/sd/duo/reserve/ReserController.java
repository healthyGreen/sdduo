package sd.duo.reserve;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;


@Controller
@RequestMapping(value="/Reserve")
public class ReserController {
	
	@Resource
	public ReserService reserService;
	ModelAndView mv = new ModelAndView();
	
	// 개인예약 폼
	@RequestMapping(value="/OneReserveForm.do", method = RequestMethod.GET)
	public String oneReserForm() {
		
		return "/reservation/oneReserForm";
	}
	
	// 개인예약 처리
	@RequestMapping(value="/OneReserveForm.do", method = RequestMethod.POST)
	public ModelAndView oneReserPro(@ModelAttribute("oneReserModel") OneReserModel oneReserModel, BindingResult result){
		
		/*new ReserValidator().validate(oneReserModel, result);
		if(result.hasErrors()){
			mv.setViewName("/reservation/oneReserForm");
			return mv;
		}*/
		reserService.insertOneReser(oneReserModel);
		mv.setViewName("/reservation/oneReserList");
		return mv;
	}
	
	// 그룹예약 폼
	@RequestMapping(value="/GroupReserveForm.do", method = RequestMethod.GET)
	public String groupReserForm(){
		
		return "/reservation/groupReserForm";
	}
	
	// 그룹예약 처리
		@RequestMapping(value="/GroupReserveForm.do", method = RequestMethod.POST)
		public ModelAndView groupReserPro(@ModelAttribute("groupReserModel") GroupReserModel groupReserModel, BindingResult result){
			
			
			/*new ReserValidator().validate(groupReserModel, result);
			if(result.hasErrors()){
				mv.setViewName("/reservation/groupReserForm");
				return mv;
			}*/
			reserService.insertGroupReser(groupReserModel);
			mv.setViewName("/reservation/oneReserList");
			return mv;
		}
}

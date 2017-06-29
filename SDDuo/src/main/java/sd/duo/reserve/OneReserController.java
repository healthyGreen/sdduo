package sd.duo.reserve;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;


@Controller
@RequestMapping(value="/OneReserve")
public class OneReserController {
	
	@Resource
	public OneReserService oneReserService;
	ModelAndView mv = new ModelAndView();
	
	// 개인예약 폼
	@RequestMapping(value="/OneReserveForm.do")
	public ModelAndView reserForm() {
		
		ModelAndView mav = new ModelAndView();
		
		mav.setViewName("oneReserForm");
		
		return mav;
	}
	
	// 개인예약 처리
	@RequestMapping(value="/OneReservePro.do")
	public ModelAndView reserPro(@ModelAttribute("oneReserModel") OneReserModel oneReserModel, BindingResult result){
		
		new OneReserValidator().validate(oneReserModel, result);
		if(result.hasErrors()){
			mv.setViewName("consultingForm");
			return mv;
		}
		oneReserService.insertOneReser(oneReserModel);
		mv.setViewName("OneReserForm");
		return mv;
	}

}

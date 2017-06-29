package sd.duo.reserve;

import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;


@Controller
@RequestMapping(value="/OneReserve")
public class OneReserController {
	
	// °³ÀÎ¿¹¾à Æû
	@RequestMapping(value="/OneReserveForm.do")
	public ModelAndView reserForm() {
		
		ModelAndView mav = new ModelAndView();
		
		mav.setViewName("oneReserForm");
		
		return mav;
	}
	
	/*@RequestMapping(value="/OneReservePro.do")
	public ModelAndView reserPro(@ModelAttribute("oneReserModel") OneReserModel oneReserModel, BindingResult result){
		
		new consultingValidator().validate(consultingmodel, result);
		if(result.hasErrors()){
			mv.setViewName("consultingForm");
			return mv;
		}
		service.insertConsulting(consultingmodel);
		mv.setViewName("redirect:consultingList.do");
		return mv;
	}
*/
}

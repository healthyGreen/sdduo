package sd.duo.reserve;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;


@Controller
@RequestMapping(value="/OneReserve")
public class OneReserController {
	
	@Resource
	public OneReserService oneReserService;
	ModelAndView mv = new ModelAndView();
	
	// 개인예약 폼
	@RequestMapping(value="/OneReserveForm.do", method = RequestMethod.GET)
	public String reserForm() {
		
		return "/reservation/oneReserForm";
	}
	
	// 개인예약 처리
	@RequestMapping(value="/OneReserveForm.do", method = RequestMethod.POST)
	public ModelAndView reserPro(@ModelAttribute("oneReserModel") OneReserModel oneReserModel, BindingResult result){
		
		new OneReserValidator().validate(oneReserModel, result);
		if(result.hasErrors()){
			mv.setViewName("/reservation/oneReserForm");
			return mv;
		}
		oneReserService.insertOneReser(oneReserModel);
		mv.setViewName("/reservation/oneReserList");
		return mv;
	}

}

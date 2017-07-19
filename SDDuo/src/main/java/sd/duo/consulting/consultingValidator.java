package sd.duo.consulting;

import org.springframework.validation.Errors;
import org.springframework.validation.ValidationUtils;
import org.springframework.validation.Validator;

public class consultingValidator implements Validator{

	@Override
	public boolean supports(Class<?> clazz) {
		// TODO Auto-generated method stub
		return consultingModel.class.isAssignableFrom(clazz);
	}

	@Override
	public void validate(Object target, Errors error) {
		// TODO Auto-generated method stub

		consultingModel consultingmodel = (consultingModel) target;
			ValidationUtils.rejectIfEmptyOrWhitespace(error, "c_title", "title");
			
		/*	 if(consultingmodel.getC_title() == null ||
			 * consultingmodel.getC_title().trim().isEmpty()){
			 * error.rejectValue("c_title", "title"); }else
			 * if(consultingmodel.getC_content() == null ||
			 * consultingmodel.getC_content().trim().isEmpty()){
			 * error.rejectValue("c_content", "content"); }else
			 * if(consultingmodel.getC_pass() == null ||
			 * consultingmodel.getC_pass().trim().isEmpty()){
			 * error.rejectValue("c_pass", "pass"); } */
			
			ValidationUtils.rejectIfEmptyOrWhitespace(error, "c_content", "content");
			ValidationUtils.rejectIfEmptyOrWhitespace(error, "c_pass", "pass");
			if (consultingmodel.getC_pass().length() != 4) {
				error.rejectValue("c_pass", "passNum");
			}
	}
	
}

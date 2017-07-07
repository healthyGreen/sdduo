package sd.duo.consulting;



import org.springframework.validation.Errors;
import org.springframework.validation.ValidationUtils;
import org.springframework.validation.Validator;


public class consultingValidator implements Validator{

	@Override
	public boolean supports(Class<?> claze) {
		// TODO Auto-generated method stub
		return consultingModel.class.isAssignableFrom(claze);
	}

	@Override
	public void validate(Object target, Errors error) {
		// TODO Auto-generated method stub
		consultingModel consultingmodel = (consultingModel)target;
		
		ValidationUtils.rejectIfEmptyOrWhitespace(error, "c_title", "title");
		ValidationUtils.rejectIfEmptyOrWhitespace(error, "c_content", "content");
		ValidationUtils.rejectIfEmptyOrWhitespace(error, "c_pass", "pass");
		if(consultingmodel.getC_pass().trim().length()!=0&&consultingmodel.getC_pass().trim().length()!=4){
			error.rejectValue("c_pass", "passNum");
		}
	}
	
}

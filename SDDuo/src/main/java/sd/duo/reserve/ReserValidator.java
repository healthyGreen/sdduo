package sd.duo.reserve;

import org.springframework.validation.Errors;
import org.springframework.validation.ValidationUtils;
import org.springframework.validation.Validator;

public class ReserValidator implements Validator{

	@Override
	public boolean supports(Class<?> claze) {
		// TODO Auto-generated method stub
		return OneReserModel.class.isAssignableFrom(claze);
	}

	@Override
	public void validate(Object target, Errors error) {
		// TODO Auto-generated method stub
		
		/*개인 예약 유효성 검사*/
		ValidationUtils.rejectIfEmptyOrWhitespace(error, "pr_hour", "pr_hour");
		ValidationUtils.rejectIfEmptyOrWhitespace(error, "pr_minute", "pr_minute");
		ValidationUtils.rejectIfEmptyOrWhitespace(error, "pr_year", "pr_year");
		ValidationUtils.rejectIfEmptyOrWhitespace(error, "pr_month", "pr_month");
		ValidationUtils.rejectIfEmptyOrWhitespace(error, "pr_day", "pr_day");
		ValidationUtils.rejectIfEmptyOrWhitespace(error, "pr_center", "pr_center");
		ValidationUtils.rejectIfEmptyOrWhitespace(error, "pr_name", "pr_name");
		ValidationUtils.rejectIfEmptyOrWhitespace(error, "pr_phone1", "pr_phone1");
		ValidationUtils.rejectIfEmptyOrWhitespace(error, "pr_phone2", "pr_phone2");
		ValidationUtils.rejectIfEmptyOrWhitespace(error, "pr_phone3", "pr_phone3");
		ValidationUtils.rejectIfEmptyOrWhitespace(error, "pr_reason", "pr_reason");
		
		/*그룹 예약 유효성 검사*/
		/*ValidationUtils.rejectIfEmptyOrWhitespace(error, "gr_hour", "gr_hour");
		ValidationUtils.rejectIfEmptyOrWhitespace(error, "gr_minute", "gr_minute");
		ValidationUtils.rejectIfEmptyOrWhitespace(error, "gr_year", "gr_year");
		ValidationUtils.rejectIfEmptyOrWhitespace(error, "gr_month", "gr_month");
		ValidationUtils.rejectIfEmptyOrWhitespace(error, "gr_day", "gr_day");
		ValidationUtils.rejectIfEmptyOrWhitespace(error, "gr_center", "gr_center");
		ValidationUtils.rejectIfEmptyOrWhitespace(error, "gr_group", "gr_group");
		ValidationUtils.rejectIfEmptyOrWhitespace(error, "gr_phone1", "gr_phone1");
		ValidationUtils.rejectIfEmptyOrWhitespace(error, "gr_phone2", "gr_phone2");
		ValidationUtils.rejectIfEmptyOrWhitespace(error, "gr_phone3", "gr_phone3");
		ValidationUtils.rejectIfEmptyOrWhitespace(error, "gr_rephone1", "gr_rephone1");
		ValidationUtils.rejectIfEmptyOrWhitespace(error, "gr_rephone2", "gr_rephone2");
		ValidationUtils.rejectIfEmptyOrWhitespace(error, "gr_rephone3", "gr_rephone3");
		ValidationUtils.rejectIfEmptyOrWhitespace(error, "gr_p_number", "gr_p_number");
		ValidationUtils.rejectIfEmptyOrWhitespace(error, "gr_reason", "gr_reason");*/
		
		
	}
	
}

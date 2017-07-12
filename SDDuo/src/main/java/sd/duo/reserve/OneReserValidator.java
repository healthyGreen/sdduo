package sd.duo.reserve;

import org.springframework.validation.Errors;
import org.springframework.validation.ValidationUtils;
import org.springframework.validation.Validator;


public class OneReserValidator implements Validator{
   @Override
   public boolean supports(Class<?> claze) {
      // TODO Auto-generated method stub
      return OneReserModel.class.isAssignableFrom(claze);
   }
   @Override
   public void validate(Object target, Errors error) {
      // TODO Auto-generated method stub
	   
	   OneReserModel oneReserModel = (OneReserModel)target;
      
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
      
   }
   
}
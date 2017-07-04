package sd.duo.adminNotice;

import org.springframework.validation.Errors;
import org.springframework.validation.ValidationUtils;
import org.springframework.validation.Validator;

import sd.duo.adminNotice.AdminNoticeModel;

public class NoticeValidator implements Validator{

	@Override
	public boolean supports(Class<?> clazz) {
		
		return AdminNoticeModel.class.isAssignableFrom(clazz);
	}

	@Override
	public void validate(Object target, Errors errors) {
		ValidationUtils.rejectIfEmptyOrWhitespace(errors, "n_title", "n_title");
		ValidationUtils.rejectIfEmptyOrWhitespace(errors, "n_content", "n_content");
	}
}
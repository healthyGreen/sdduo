package sd.duo.member;

import org.springframework.validation.Errors;
import org.springframework.validation.ValidationUtils;
import org.springframework.validation.Validator;

import sd.duo.member.MemberModel;

public class MemberValidator implements Validator{

   @Override
   public boolean supports(Class<?> clazz) {
      // 유효성검사하려는 model이 Validation가능한지 여부를 확인하고 가능하면 검사시작
      return MemberModel.class.isAssignableFrom(clazz);
   }

   @Override
   public void validate(Object target, Errors errors) {
      MemberModel member = (MemberModel)target;
      
      ValidationUtils.rejectIfEmptyOrWhitespace(errors, "m_id", "m_id");
      ValidationUtils.rejectIfEmptyOrWhitespace(errors, "m_pass", "m_pass");
      
      // 비밀번호가 일치하지 않는다면
      if(equals(member.getM_pass()) == false){
         errors.rejectValue("m_pass", "m_pass");
      }
      
      ValidationUtils.rejectIfEmptyOrWhitespace(errors, "m_name", "m_name");
      ValidationUtils.rejectIfEmpty(errors, "m_email", "m_email");
   }
   
}
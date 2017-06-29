package sd.duo.member;

import org.springframework.validation.Errors;
import org.springframework.validation.ValidationUtils;
import org.springframework.validation.Validator;

import sd.duo.member.MemberModel;

public class MemberValidator implements Validator{

   @Override
   public boolean supports(Class<?> clazz) {
      // ��ȿ���˻��Ϸ��� model�� Validation�������� ���θ� Ȯ���ϰ� �����ϸ� �˻����
      return MemberModel.class.isAssignableFrom(clazz);
   }

   @Override
   public void validate(Object target, Errors errors) {
      MemberModel member = (MemberModel)target;
      
      ValidationUtils.rejectIfEmptyOrWhitespace(errors, "id", "id");
      ValidationUtils.rejectIfEmptyOrWhitespace(errors, "pass", "pass");
      
      // ��й�ȣ�� ��ġ���� �ʴ´ٸ�
      if(equals(member.getM_pass()) == false){
         errors.rejectValue("pass2", "pass2");
      }
      
      ValidationUtils.rejectIfEmptyOrWhitespace(errors, "name", "name");
      ValidationUtils.rejectIfEmpty(errors, "email", "email");
   }
   
}
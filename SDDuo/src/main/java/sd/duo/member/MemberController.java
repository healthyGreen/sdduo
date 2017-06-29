package sd.duo.member;

import java.util.ArrayList;
import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.dao.DuplicateKeyException;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import sd.duo.member.MemberValidator;

@Controller
@RequestMapping("/member")
public class MemberController {
   
   
   private MemberService memberService;
   
   ModelAndView mav = new ModelAndView();
   
   // �α��� ������
   @RequestMapping(value="/loginForm.do", method = RequestMethod.GET)
   public String loginForm(){
      return "loginForm";
   }
   
   // �α��� ����
   @RequestMapping(value="/login.do", method = RequestMethod.POST)
   public ModelAndView memberLogin(HttpServletRequest request, MemberModel mem){
      
      MemberModel result = memberService.memberLogin(mem);
      
      if(result != null){
         System.out.println("�α��� ����");
         HttpSession session = request.getSession();
         
         session.setAttribute("mem", result);
         session.setAttribute("session_member_id", result.getM_id());
         session.setAttribute("session_member_name" ,result.getM_name());
         session.setAttribute("session_member_no" ,result.getM_number());
         
         mav.setViewName("redirect:/main.do");
         return mav;
      }
      
      // �α��� ����
      mav.setViewName("member/loginError");
      return mav;
   }
   
   // �α׾ƿ�
   @RequestMapping("/logout.do")
   public ModelAndView memberLogout(HttpServletRequest request, MemberModel mem){
      HttpSession session = request.getSession(false);
      
      if(session != null){
         //System.out.println("�α׾ƿ� ����");
         session.invalidate();
      }
      
      //mav.setViewName("member/logout");
      mav.setViewName("redirect:/main.mt");
      return mav;
   }
   // ��ȿ�� �˻�� �����߻��� �Ѿ�� �ϴ� ���� ( joinStep2 �� commandName )
   @ModelAttribute("member")
   public MemberModel formBack(){
      return new MemberModel();
   }
   
   // �̿��� , �������� ����
   @RequestMapping("/agree.do")
   public ModelAndView memberStep1(){
      mav.setViewName("agree");
      return mav;
   }
   
   // ȸ������ �Է�
   @RequestMapping("/joinForm.do")
   public ModelAndView memberStep2(){
      mav.setViewName("joinForm");
      return mav;
   }
   
   // ȸ�����ԿϷ�
   @RequestMapping("/joinSuccess.do")
   public ModelAndView memberStep3(@ModelAttribute("member") MemberModel member, BindingResult result){
      
      // Validate Binding
      new MemberValidator().validate(member, result);
      
      // ������ ������ ȸ������������ �Ѿ
      if(result.hasErrors()){
         mav.setViewName("joinSuccess");
         return mav;
      }
      try{
         // ��ȿ�� �˻翡 ����ϸ� ȸ�����ԿϷ�
         memberService.insertMember(member);
         mav.setViewName("memberEnd");
         return mav;
      }catch(DuplicateKeyException e){
         // https://msdn.microsoft.com/ko-kr/library/system.data.linq.duplicatekeyexception(v=vs.110).aspx
         // db���� id�� ���������� unique�� �ٲ�� ������ �ߺ��� ���̵�� �����Ϸ��ϸ� DuplicateKeyException�� �߰Եǰ�
         // ����ó���� properties���Ͽ� ��ϵ� "invalid"�� ������ ������ ����� ȸ������������ ���ư�������.
         // ���̵� �ߺ��˻�
         result.reject("invalid", null);
         mav.setViewName("memberInfo");
         return mav;
      }
   }
   
   
   //ȸ�� ���� ���� ��� ��
      @RequestMapping("/checkPassForm.do")
      public ModelAndView checkPassForm()
      {
         mav.setViewName("checkPassForm");
         return mav;
      }
      //ȸ�� ���� ���� ��� Ȯ��
      @RequestMapping("/checkPass.do")
      public ModelAndView checkPassPro(@ModelAttribute("member") MemberModel member, HttpServletRequest requeset, HttpSession session)
      {
         MemberModel memberModel;
         String id;
         String passwd;
         
         passwd = requeset.getParameter("passwd");
         id = session.getAttribute("session_member_id").toString();
         
         memberModel = (MemberModel)memberService.getMember(id);
         if(memberModel.getM_pass().equals(passwd))
         {
            mav.setViewName("myInfoModifyForm");
            return mav;
         }else
         {
            mav.setViewName("checkPassFrom");
            return mav;
         }
      }
      
      //ȸ�� ���� ��
         @RequestMapping("/myInfoModifyForm.do")//myInfoModifyForm.jsp
         public ModelAndView myInfoModifyForm()
         {
            mav.setViewName("myInfoModifyForm");
            return mav;
         }
         //ȸ�� ���� ����
         @RequestMapping("/myInfoModify.do")
         public ModelAndView myInfoModifyPro(@ModelAttribute("member") MemberModel member, BindingResult result, HttpSession session)
         {
            if(session.getAttribute("session_member_id") == null)
            {
               mav.setViewName("loginForm");
               return mav;
            }
            
            MemberModel memberModel = new MemberModel();
            
            if(session.getAttribute("session_member_id") != null)
            {
               memberService.memberModify(member);
               mav.addObject("member",memberModel);
               
               mav.setViewName("myInfoView");
               return mav;
            }
            mav.setViewName("loginForm");
            return mav;
         }

      // ȸ�� Ż�� ��� ��
       @RequestMapping("/existPassFrom.do")
       public ModelAndView existPassForm()
       {
          mav.setViewName("existPassForm");
          return mav;
       }
       
      // ȸ�� Ż�� ��� Ȯ�� 
       @RequestMapping("/existPass.do")
       public ModelAndView existPassPro(@ModelAttribute("member") MemberModel member, HttpServletRequest requeset, HttpSession session)
       {
          MemberModel memberModel;
          String id;
          String passwd;
          
          passwd = requeset.getParameter("passwd");
          id = session.getAttribute("session_member_id").toString();
          
          memberModel = (MemberModel)memberService.getMember(id);
          if(memberModel.getM_pass().equals(passwd))
          {
             mav.setViewName("existWarring");
             return mav;
          }else
          {
             mav.setViewName("checkPassFrom");
             return mav;
          }
       }
      
      // ȸ�� Ż��
      @RequestMapping("/exist.do")
      public ModelAndView exist(@ModelAttribute("member") MemberModel member, BindingResult result, HttpServletRequest requeset, HttpSession session){
         MemberModel memberModel;
         String id;
         String pass;
         int deleteCheck;
         
         pass = requeset.getParameter("pass");
         
         id = session.getAttribute("session_member_id").toString();
         memberModel = (MemberModel)memberService.getMember(id);
         
         if(memberModel.getM_pass().equals(pass)){
            deleteCheck = 1;
            
            memberService.memberDelete(id);
            session.removeAttribute("session_member_id");
            session.removeAttribute("session_member_name");
            session.removeAttribute("session_member_no");
         }else{
            deleteCheck = -1;   // �н����尡 Ʋ�� ��
         }
         
         mav.addObject("deleteCheck",deleteCheck);
         mav.setViewName("member/deleteResult");
         return mav;
      }
      @RequestMapping("/findIdResult.do")
      public ModelAndView findId(@ModelAttribute("member") MemberModel member, HttpServletRequest request){
         
         int findIdChk;
         String name = request.getParameter("name");
         String phone1 = request.getParameter("phone1");
         String phone2 = request.getParameter("phone2");
         String phone3 = request.getParameter("phone3");
         
         member.setM_name(name);
         member.setM_phone1(phone1);
         member.setM_phone2(phone2);
         member.setM_phone3(phone3);
         
         member = memberService.idFind(member);
         
         if(member == null){
            findIdChk = 0;
            mav.addObject("memberFindChk",findIdChk);
            mav.setViewName("member/idFindError");
            return mav;
         }else if(member.getM_name().equals(name) && member.getM_phone1().equals(phone1) && member.getM_phone2().equals(phone2) && member.getM_phone3().equals(phone3))
            {
               findIdChk = 1;
               mav.addObject("member",member);
               mav.addObject("findIdChk",findIdChk);
               mav.setViewName("findIdOk");
               return mav;
            }else{
               findIdChk = -1;
               mav.addObject("findIdChk",findIdChk);
               mav.setViewName("member/findIdError");
               return mav;
            }
         }
   }
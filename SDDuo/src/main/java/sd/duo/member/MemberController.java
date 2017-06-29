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
   
   // 로그인 페이지
   @RequestMapping(value="/loginForm.do", method = RequestMethod.GET)
   public String loginForm(){
      return "loginForm";
   }
   
   // 로그인 여부
   @RequestMapping(value="/login.do", method = RequestMethod.POST)
   public ModelAndView memberLogin(HttpServletRequest request, MemberModel mem){
      
      MemberModel result = memberService.memberLogin(mem);
      
      if(result != null){
         System.out.println("로그인 성공");
         HttpSession session = request.getSession();
         
         session.setAttribute("mem", result);
         session.setAttribute("session_member_id", result.getM_id());
         session.setAttribute("session_member_name" ,result.getM_name());
         session.setAttribute("session_member_no" ,result.getM_number());
         
         mav.setViewName("redirect:/main.do");
         return mav;
      }
      
      // 로그인 실패
      mav.setViewName("member/loginError");
      return mav;
   }
   
   // 로그아웃
   @RequestMapping("/logout.do")
   public ModelAndView memberLogout(HttpServletRequest request, MemberModel mem){
      HttpSession session = request.getSession(false);
      
      if(session != null){
         //System.out.println("로그아웃 성공");
         session.invalidate();
      }
      
      //mav.setViewName("member/logout");
      mav.setViewName("redirect:/main.mt");
      return mav;
   }
   // 유효성 검사시 에러발생시 넘어가게 하는 로직 ( joinStep2 의 commandName )
   @ModelAttribute("member")
   public MemberModel formBack(){
      return new MemberModel();
   }
   
   // 이용약관 , 개인정보 동의
   @RequestMapping("/agree.do")
   public ModelAndView memberStep1(){
      mav.setViewName("agree");
      return mav;
   }
   
   // 회원정보 입력
   @RequestMapping("/joinForm.do")
   public ModelAndView memberStep2(){
      mav.setViewName("joinForm");
      return mav;
   }
   
   // 회원가입완료
   @RequestMapping("/joinSuccess.do")
   public ModelAndView memberStep3(@ModelAttribute("member") MemberModel member, BindingResult result){
      
      // Validate Binding
      new MemberValidator().validate(member, result);
      
      // 에러가 있으면 회원가입폼으로 넘어감
      if(result.hasErrors()){
         mav.setViewName("joinSuccess");
         return mav;
      }
      try{
         // 유효성 검사에 통과하면 회원가입완료
         memberService.insertMember(member);
         mav.setViewName("memberEnd");
         return mav;
      }catch(DuplicateKeyException e){
         // https://msdn.microsoft.com/ko-kr/library/system.data.linq.duplicatekeyexception(v=vs.110).aspx
         // db에서 id의 제약조건을 unique로 바꿨기 때문에 중복된 아이디로 가입하려하면 DuplicateKeyException이 뜨게되고
         // 예외처리로 properties파일에 등록된 "invalid"의 내용이 나오게 만들고 회원가입폼으로 돌아가게했음.
         // 아이디 중복검사
         result.reject("invalid", null);
         mav.setViewName("memberInfo");
         return mav;
      }
   }
   
   
   //회원 정보 수정 비번 폼
      @RequestMapping("/checkPassForm.do")
      public ModelAndView checkPassForm()
      {
         mav.setViewName("checkPassForm");
         return mav;
      }
      //회원 정보 수정 비번 확인
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
      
      //회원 수정 폼
         @RequestMapping("/myInfoModifyForm.do")//myInfoModifyForm.jsp
         public ModelAndView myInfoModifyForm()
         {
            mav.setViewName("myInfoModifyForm");
            return mav;
         }
         //회원 정보 수정
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

      // 회원 탈퇴 비번 폼
       @RequestMapping("/existPassFrom.do")
       public ModelAndView existPassForm()
       {
          mav.setViewName("existPassForm");
          return mav;
       }
       
      // 회원 탈퇴 비번 확인 
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
      
      // 회원 탈퇴
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
            deleteCheck = -1;   // 패스워드가 틀릴 때
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
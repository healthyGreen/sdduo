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
   
   @Resource(name="memberService")
   private MemberService memberService;
   
   ModelAndView mav = new ModelAndView();
   
// 로그인 페이지
   @RequestMapping(value="/loginForm.do", method = RequestMethod.GET)
   public ModelAndView loginForm(){
	   mav.setViewName("loginForm");
      return mav;
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
         session.setAttribute("session_admin", result.getM_admin());
         session.setAttribute("session_member_coupon" ,result.getM_r_coupon());
         
         mav.setViewName("myInfoView");
         return mav;
      }
      
      // 로그인 실패
      System.out.println("로그인 실패");
      mav.setViewName("loginForm");
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
      mav.setViewName("loginForm");
      return mav;
   }
   // 유효성 검사시 에러발생시 넘어가게 하는 로직 ( joinStep2 의 commandName )
   @ModelAttribute("member")
   public MemberModel formBack(){
      return new MemberModel();
   }
   
   // 이용약관 , 개인정보 동의
   @RequestMapping(value="/agree.do", method=RequestMethod.GET)
   public ModelAndView memberStep1(HttpServletRequest request){
      mav.setViewName("/member/agree");
      return mav;
   }
   
   // 회원정보 입력
   @RequestMapping(value="/joinForm.do", method=RequestMethod.POST)
   public ModelAndView memberStep2(HttpServletRequest request){
      mav.setViewName("joinForm");
      return mav;
   }
   
   // 회원가입완료
   @RequestMapping(value="/joinSuccess.do")
   public ModelAndView memberStep3(@ModelAttribute("member") MemberModel member, BindingResult result,HttpServletRequest request){
      
      
      ModelAndView mav = new ModelAndView();
      
      new MemberValidator().validate(member, result);
      
         memberService.insertMember(member);
         
         mav.setViewName("/member/joinSuccess");
         
         return mav;
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
         String id;
         String passwd;
         
         passwd = requeset.getParameter("m_pass");
         id = session.getAttribute("session_member_id").toString();
         
         System.out.println(id);
         System.out.println(passwd);
         
         member = (MemberModel)memberService.getMember(id);
         if(member.getM_pass().equals(passwd))
         {
            mav.setViewName("myInfoModifyForm");
            return mav;
         }else
         {
            mav.setViewName("checkPassForm");
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
            MemberModel memberModel = new MemberModel();
            
            memberService.memberModify(member);
            //mav.addObject("member",memberModel);
            
            mav.setViewName("myInfoView");
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
       public ModelAndView exist(@ModelAttribute("member") MemberModel member, BindingResult result, HttpServletRequest requeset, HttpSession session)
       {
          MemberModel memberModel;
          String id;
          
          id = session.getAttribute("session_member_id").toString();
          memberService.memberDelete(id);
          session.removeAttribute("session_member_id");
           session.removeAttribute("session_member_name");
           session.removeAttribute("session_member_no");
           
           mav.setViewName("main");
           return mav;
       }
         
    // 아이디 찾기 폼
       @RequestMapping("/findIdForm.do")
       public ModelAndView FindIdForm(){
          mav.setViewName("findIdForm");
          return mav;
       }
       
   // 아이디 찾기 처리
       @RequestMapping("/findIdResult.do")
       public ModelAndView findId(@ModelAttribute("member") MemberModel member, HttpServletRequest request){
          
          int findIdChk;
          String name = request.getParameter("m_name");
          String tongsinsa = request.getParameter("m_tongsinsa");
          String phone1 = request.getParameter("m_phone1");
          String phone2 = request.getParameter("m_phone2");
          String phone3 = request.getParameter("m_phone3");
          
          member.setM_name(name);
          member.setM_tongsinsa(tongsinsa);
          member.setM_phone1(phone1);
          member.setM_phone2(phone2);
          member.setM_phone3(phone3);
          
          member = memberService.idFind(member);
          
          
          if(member != null)
          {
              findIdChk = 1;   //findIdChk=1 : 찾기 성공.
              mav.addObject("member",member);
              mav.addObject("memberFindIdChk",findIdChk);
              mav.setViewName("findIdResult");
              return mav;
          
         }else{
            findIdChk = -1;   //findIdChk=-1 : 입력하신 정보가 일치하지 않습니다.
            mav.addObject("memberFindIdChk",findIdChk);
            mav.setViewName("findIdResult");
            return mav;
         }
      }
       
       // 비밀번호 찾기 폼
       @RequestMapping("/findPwForm.do")
       public ModelAndView FindPwForm(){
          mav.setViewName("findPwForm");
          return mav;
       }
       
       // 비밀번호 찾기 처리
       @RequestMapping("/findPwResult.do")
       public ModelAndView findPw(@ModelAttribute("member") MemberModel member, HttpServletRequest request){
          
          int findPwChk;
          String id = request.getParameter("m_id");
          String name = request.getParameter("m_name");
          String tongsinsa = request.getParameter("m_tongsinsa");
          String phone1 = request.getParameter("m_phone1");
          String phone2 = request.getParameter("m_phone2");
          String phone3 = request.getParameter("m_phone3");
          
          member.setM_id(id);
          member.setM_name(name);
          member.setM_tongsinsa(tongsinsa);
          member.setM_phone1(phone1);
          member.setM_phone2(phone2);
          member.setM_phone3(phone3);
          
          member = memberService.pwFind(member);
          
          if(member != null)
          {
              findPwChk = 1;   //findPwChk=1 : 찾기 성공.
              mav.addObject("member",member);
              mav.addObject("findPwChk",findPwChk);
              mav.setViewName("findPwResult");
              return mav;
          
             }else{
                findPwChk = -1;   //
                mav.addObject("findPwChk",findPwChk);
                mav.setViewName("findPwResult");
                return mav;
             }
       }
        //회원 정보 보기
          @RequestMapping("/myInfoView.do")
          public ModelAndView myInfoView(@ModelAttribute("member") MemberModel member, HttpServletRequest request, HttpSession session)
          {
       	   String id;
       	   id = session.getAttribute("session_member_id").toString();
       	   member = memberService.getMember(id);
       	  mav.addObject("member",member);
       	  
       	  System.out.println("이름"+member.getM_name());
             mav.setViewName("myInfoView");
             return mav;
          
          }
}
   
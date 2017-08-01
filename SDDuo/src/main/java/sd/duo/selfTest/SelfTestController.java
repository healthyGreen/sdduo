package sd.duo.selfTest;

import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import sd.duo.member.MemberModel;
import sd.duo.member.MemberService;


@Controller
@RequestMapping(value = "/self")
public class SelfTestController {
   
   @Resource
   private SelfTestService selfService;
   @Resource
   private MemberService memberService;

   ModelAndView mav = new ModelAndView();
   
   String m_id;
   String t_category;
   int t_score; 
   //폼
   @RequestMapping(value="/selfWrite.do", method=RequestMethod.GET)
   public ModelAndView selfTestForm(HttpServletRequest request) {
      
      ModelAndView mav = new ModelAndView();
      mav.addObject("selfModel", new SelfTestModel());
      mav.setViewName("self");
      return mav;
   }
   
   // 자가진단 점수 입력
   @RequestMapping(value="/selfWrite.do", method=RequestMethod.POST)
   public ModelAndView selfTest(SelfTestModel selfModel, HttpServletRequest requeset,
         HttpSession session)throws Exception{
      
      SelfTestModel check = new SelfTestModel();
      t_category = selfModel.getT_category();
      t_score = selfModel.getT_score();
      m_id = (String)session.getAttribute("session_member_id");
      String id = (String)session.getAttribute("session_member_id");
      if(id==null){
         mav.setViewName("loginForm");
         return mav;
      }
      selfModel.setM_id(m_id);
      check=selfService.selfList(selfModel);
      
      if(t_score>=0 && t_score<10){
         selfModel.setT_grade("비우울");
      }else if(t_score>=10 && t_score<16){
         selfModel.setT_grade("경한 우울증");
      }else if(t_score>=16 && t_score<24){
         selfModel.setT_grade("중증도 우울증");
      }else{
         selfModel.setT_grade("중증 우울증");
      }
      
      if(check!=null){
         selfService.selfModify(selfModel);
      }else{
         selfService.selfWrite(selfModel);
         }
      mav.setViewName("redirect:/self/selfTestList.do?t_category=" + t_category);
      return mav;
   }   


   @RequestMapping(value="/selfTestList.do")
   public ModelAndView selfTestList(SelfTestModel selfTestModel, HttpServletRequest requeset,
         HttpSession session)throws Exception{
         
         MemberModel m = new MemberModel();
         String category = null;
         SelfTestModel result = new SelfTestModel();
         m_id=(String)session.getAttribute("session_member_id");
         t_category = requeset.getParameter("t_category");
         selfTestModel.setM_id(m_id);
         selfTestModel.setT_category(t_category);
         result = selfService.selfList(selfTestModel);
         m=memberService.getMember(m_id);
         if(result==null){
            category=null;
         }else{
         if(result.getT_category().equals("1")){
            category="우울증상";
         }else if(result.getT_category().equals("2")){
            category="불안증상";
         }else if(result.getT_category().equals("3")){
            category="스트레스";
         }else{
            category="분노조절";
         }
         }
         mav.addObject("member", m);
         mav.addObject("category", category);   
         mav.addObject("result", result);
         mav.setViewName("selfTestList");
         return mav;
      }   
   }
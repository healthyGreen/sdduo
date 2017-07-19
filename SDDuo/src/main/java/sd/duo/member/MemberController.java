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
	String m_id;
	@Resource(name = "memberService")
	private MemberService memberService;

	ModelAndView mav = new ModelAndView();
	String aboutLogin = null;
	
	// about�뜝�룞�삕�뜝�룞�삕�뜝�룞�삕
	@RequestMapping(value = "/about.do")
	public ModelAndView about() {
		mav.setViewName("about");
		return mav;
	}

	// �뜝�떥源띿삕�뜝�룞�삕 �뜝�룞�삕�뜝�룞�삕�뜝�룞�삕
	@RequestMapping(value = "/loginForm.do", method = RequestMethod.GET)
	public ModelAndView loginForm() {
		aboutLogin = "justlogin";
		mav.addObject("aboutLogin", aboutLogin);
		mav.setViewName("loginForm");
		return mav;
	}

	// �뜝�떥源띿삕�뜝�룞�삕 �뜝�룞�삕�뜝�룞�삕
	@RequestMapping(value = "/login.do", method = RequestMethod.POST)
	public ModelAndView memberLogin(HttpServletRequest request, MemberModel mem) {

		MemberModel result = memberService.memberLogin(mem);
		
		if (result != null) {
			HttpSession session = request.getSession();

			session.setAttribute("mem", result);
			session.setAttribute("session_member_id", result.getM_id());
			session.setAttribute("session_member_name", result.getM_name());
			session.setAttribute("session_member_no", result.getM_number());
			session.setAttribute("session_admin", result.getM_admin());
			session.setAttribute("session_member_coupon", result.getM_r_coupon());

			mav.setViewName("redirect:/main.do");
			return mav;
		}
		aboutLogin = "loginError";
		// �뜝�떥源띿삕�뜝�룞�삕 �뜝�룞�삕�뜝�룞�삕
		mav.addObject("aboutLogin", aboutLogin);
		mav.setViewName("loginForm");
		return mav;
	}

	// �뜝�떥洹몄븘�슱�삕
	@RequestMapping("/logout.do")
	public ModelAndView memberLogout(HttpServletRequest request, MemberModel mem) {
		HttpSession session = request.getSession(false);

		if (session != null) {
			// System.out.println("�뜝�떥洹몄븘�슱�삕 �뜝�룞�삕�뜝�룞�삕");
			session.invalidate();
		}

		// mav.setViewName("member/logout");
		mav.setViewName("loginForm");
		return mav;
	}

	// �뜝�룞�삕�슚�뜝�룞�삕 �뜝�떙�궪�삕�뜝占� �뜝�룞�삕�뜝�룞�삕�뜝�뙥�궪�삕�뜝�룞�삕 �뜝�떬�뼱媛��뜝�룞�삕 �뜝�떦�뙋�삕 �뜝�룞�삕�뜝�룞�삕 ( joinStep2 �뜝�룞�삕 commandName )
	@ModelAttribute("member")
	public MemberModel formBack() {
		return new MemberModel();
	}

	// �뜝�떛�슱�삕�뜝�룞�삕 , �뜝�룞�삕�뜝�룞�삕�뜝�룞�삕�뜝�룞�삕 �뜝�룞�삕�뜝�룞�삕
	@RequestMapping(value = "/agree.do", method = RequestMethod.GET)
	public ModelAndView memberStep1(HttpServletRequest request) {
		mav.setViewName("agree");
		return mav;
	}

	// �쉶�뜝�룞�삕�뜝�룞�삕�뜝�룞�삕 �뜝�뙃琉꾩삕
	@RequestMapping(value = "/joinForm.do")
	public ModelAndView memberStep2(HttpServletRequest request) {
		mav.setViewName("joinForm");
		return mav;
	}

	// �쉶�뜝�룞�삕�뜝�룞�삕�뜝�뙃�셿琉꾩삕
	@RequestMapping(value = "/joinSuccess.do")
	public ModelAndView memberStep3(@ModelAttribute("member") MemberModel member, BindingResult result,
			HttpServletRequest request) {

		ModelAndView mav = new ModelAndView();

		new MemberValidator().validate(member, result);
		if(result.hasErrors()){
			mav.setViewName("joinForm");
			return mav;
		}
		memberService.insertMember(member);
		mav.setViewName("joinSuccess");
		return mav;
	}

	// �쉶�뜝�룞�삕 �뜝�룞�삕�뜝�룞�삕 �뜝�룞�삕�뜝�룞�삕 �뜝�룞�삕�뜝占� �뜝�룞�삕
	@RequestMapping("/checkPassForm.do")
	public ModelAndView checkPassForm() {
		mav.setViewName("checkPassForm");
		return mav;
	}

	// �쉶�뜝�룞�삕 �뜝�룞�삕�뜝�룞�삕 �뜝�룞�삕�뜝�룞�삕 �뜝�룞�삕�뜝占� �솗�뜝�룞�삕
	@RequestMapping("/checkPass.do")
	public ModelAndView checkPassPro(MemberModel member, HttpServletRequest requeset,
			HttpSession session) {
		String id;
		String passwd;

		passwd = requeset.getParameter("m_pass");
		id = session.getAttribute("session_member_id").toString();

		System.out.println(id);
		System.out.println(passwd);

		member = (MemberModel) memberService.getMember(id);
		if (member.getM_pass().equals(passwd)) {
			mav.setViewName("myInfoModifyForm");
			return mav;
		} else {
			mav.setViewName("memberPassError");
			return mav;
		}
	}

	// �쉶�뜝�룞�삕 �뜝�룞�삕�뜝�룞�삕 �뜝�룞�삕
	@RequestMapping("/myInfoModifyForm.do") // myInfoModifyForm.jsp
	public ModelAndView myInfoModifyForm() {
		mav.setViewName("myInfoModifyForm");
		return mav;
	}

	// �쉶�뜝�룞�삕 �뜝�룞�삕�뜝�룞�삕 �뜝�룞�삕�뜝�룞�삕
	@RequestMapping("/myInfoModify.do")
	public ModelAndView myInfoModifyPro(@ModelAttribute("member") MemberModel member, BindingResult result,
			HttpSession session) {
		MemberModel memberModel = new MemberModel();

		memberService.memberModify(member);
		memberModel = memberService.getMember((String)session.getAttribute("session_member_id"));
		memberModel.getM_id();
		// mav.addObject("member",memberModel);

		mav.setViewName("redirect:/member/myInfoView.do");
		return mav;
	}

	// �쉶�뜝�룞�삕 �깉�뜝�룞�삕 �뜝�룞�삕�뜝占� �뜝�룞�삕
	/*@RequestMapping("/existPassForm.do")
	public ModelAndView existPassForm() {
		mav.setViewName("existPassForm");
		return mav;
	}*/

	// �쉶�뜝�룞�삕 �깉�뜝�룞�삕 �뜝�룞�삕�뜝占� �솗�뜝�룞�삕
	@RequestMapping("/existPass.do")
	public ModelAndView existPassPro(MemberModel member, HttpServletRequest requeset,
			HttpSession session) {
		String id;
		String passwd;

		//passwd=member.getM_pass();
		passwd = requeset.getParameter("m_pass");
		id = (String)session.getAttribute("session_member_id");

		//System.out.println(id);
		//System.out.println(passwd);
		//MemberModel m = new MemberModel();
		member = (MemberModel) memberService.getMember(id);
		if (member.getM_pass().equals(passwd)) {
			mav.setViewName("existWarning");
			return mav;
		} else {
			mav.setViewName("memberPassError");
			return mav;
		}
	}

	// �쉶�뜝�룞�삕 �깉�뜝�룞�삕
	@RequestMapping("/exist.do")
	public ModelAndView exist(@ModelAttribute("member") MemberModel member, BindingResult result,
			HttpServletRequest requeset, HttpSession session) {
		MemberModel memberModel;
		String id;

		id = session.getAttribute("session_member_id").toString();
		memberService.memberDelete(id);
		session.removeAttribute("session_member_id");
		session.removeAttribute("session_member_name");
		session.removeAttribute("session_member_no");
		session.removeAttribute("session_admin");
		session.removeAttribute("session_member_coupon");

		mav.setViewName("redirect:/main.do");
		return mav;
	}
	
	@RequestMapping("/idCheck.do")
	public ModelAndView idCheck(HttpServletRequest request){
		m_id = (String)request.getParameter("m_id");
		MemberModel memberModel = new MemberModel();
		memberModel = memberService.idCheck(m_id);
		//boolean ckId;
		//System.out.println(memberModel.getM_id());
		/*//System.out.println("!");
		if(memberModel!=null){
			ckId = false;
		}else ckId = true;*/
		mav.addObject("m_id", m_id);
		mav.addObject("member", memberModel);
		mav.setViewName("member/idCheck");
		return mav;
	}

	// �뜝�룞�삕�뜝�떛�벝�삕 李얍뜝�룞�삕 �뜝�룞�삕
	@RequestMapping("/findIdForm.do")
	public ModelAndView FindIdForm() {
		mav.setViewName("findIdForm");
		return mav;
	}

	// �뜝�룞�삕�뜝�떛�벝�삕 李얍뜝�룞�삕 泥섇뜝�룞�삕
	@RequestMapping("/findIdResult.do")
	public ModelAndView findId(@ModelAttribute("member") MemberModel member, HttpServletRequest request) {

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

		if (member != null) {
			findIdChk = 1; // findIdChk=1 : 李얍뜝�룞�삕 �뜝�룞�삕�뜝�룞�삕.
			mav.addObject("member", member);
			mav.addObject("memberFindIdChk", findIdChk);
			mav.setViewName("findIdResult");
			return mav;

		} else {
			findIdChk = -1; // findIdChk=-1 : �뜝�뙃琉꾩삕�뜝�떦�룞�삕 �뜝�룞�삕�뜝�룞�삕�뜝�룞�삕 �뜝�룞�삕移섇뜝�룞�삕�뜝�룞�삕 �뜝�떗�룞�삕�뜝�떦�뙋�삕.
			mav.addObject("memberFindIdChk", findIdChk);
			mav.setViewName("findIdResult");
			return mav;
		}
	}

	// �뜝�룞�삕艅섇뜝�떕占� 李얍뜝�룞�삕 �뜝�룞�삕
	@RequestMapping("/findPwForm.do")
	public ModelAndView FindPwForm() {
		mav.setViewName("findPwForm");
		return mav;
	}

	// �뜝�룞�삕艅섇뜝�떕占� 李얍뜝�룞�삕 泥섇뜝�룞�삕
	@RequestMapping("/findPwResult.do")
	public ModelAndView findPw(@ModelAttribute("member") MemberModel member, HttpServletRequest request) {

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

		if (member != null) {
			findPwChk = 1; // findPwChk=1 : 李얍뜝�룞�삕 �뜝�룞�삕�뜝�룞�삕.
			mav.addObject("member", member);
			mav.addObject("findPwChk", findPwChk);
			mav.setViewName("findPwResult");
			return mav;

		} else {
			findPwChk = -1; //
			mav.addObject("findPwChk", findPwChk);
			mav.setViewName("findPwResult");
			return mav;
		}
	}

	// �쉶�뜝�룞�삕 �뜝�룞�삕�뜝�룞�삕 �뜝�룞�삕�뜝�룞�삕
	@RequestMapping("/myInfoView.do")
	public ModelAndView myInfoView(@ModelAttribute("member") MemberModel member, HttpServletRequest request,
			HttpSession session) {
		String id;
		id = session.getAttribute("session_member_id").toString();
		member = memberService.getMember(id);
		/*List<String> coupon = new ArrayList<String>();
		coupon.add(0, "�쉶�뜝�룞�삕�뜝�룞�삕�뜝�룞�삕 �뜝�룞�삕�뜝占� �뜝�룞�삕�뜝�룞�삕");
		if(member.getM_r_coupon()=="2"){
			coupon.add(1, "�뜝�듅�씛�삕�뜝�룞�삕 �뜝�룞�삕�뜝�룞�삕 �뜝�룞�삕�뜝占� �뜝�룞�삕�뜝�룞�삕");
		}*/
		mav.addObject("member", member);
		//mav.addObject("coupon", coupon);

		mav.setViewName("myInfoView");
		return mav;
	}
	
	@RequestMapping("/myCoupon.do")
	public ModelAndView myCoupon(MemberModel member, HttpSession session){
		String id;
		//List<MemberModel> memberCoupon = new ArrayList<MemberModel>();
		//List<String> coupon = new ArrayList<String>();
		id = session.getAttribute("session_member_id").toString();
		member = memberService.getMember(id);
		/*memberCoupon.s
		if(member.getM_r_coupon().equals("2")){
			coupon.add(1, "�뜝�듅�씛�삕�뜝�룞�삕 �뜝�룞�삕�뜝�룞�삕 �뜝�룞�삕�뜝占� �뜝�룞�삕�뜝�룞�삕");
		}*/
		mav.addObject("member", member);
	//	mav.addObject("coupon", coupon);
		mav.setViewName("myCoupon");
		return mav;
	}
}

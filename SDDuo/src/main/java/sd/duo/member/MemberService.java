package sd.duo.member;

import java.util.List;

import javax.annotation.Resource;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Service;

@Service
public class MemberService implements MemberDao {

	@Resource(name = "sqlSessionTemplate")
	private SqlSessionTemplate sqlSessionTemplate;

	@Override
	public MemberModel memberLogin(MemberModel member) {
		return sqlSessionTemplate.selectOne("member.memberLogin", member);
	}

	@Override
	public MemberModel getMember(String id) {
		return sqlSessionTemplate.selectOne("member.getMember", id);
	}

	@Override
	public Object insertMember(MemberModel member) {
		return sqlSessionTemplate.insert("member.insertMember", member);
	}

	@Override
	public MemberModel idFind(MemberModel member) {
		return sqlSessionTemplate.selectOne("member.idFind", member);
	}

	@Override
	public MemberModel pwFind(MemberModel member) {
		return sqlSessionTemplate.selectOne("member.pwFind", member);
	}

	@Override
	public Object memberModify(MemberModel member) {
		return sqlSessionTemplate.update("member.updateMember", member);
	}

	@Override
	public Object memberDelete(String id) {
		return sqlSessionTemplate.delete("member.deleteMember", id);
	}

	@Override
	public MemberModel memberList(MemberModel member) {
		return sqlSessionTemplate.selectOne("member.memberList", member);
	}

	@Override
	public int couponSet(String m_id) {
		// TODO Auto-generated method stub
		return sqlSessionTemplate.update("member.couponSet", m_id);
	}

	@Override
	public int MyTotCoupon(String m_id) {
		// TODO Auto-generated method stub
		return sqlSessionTemplate.selectOne("member.MyTotCoupon", m_id);
	}

	@Override
	public List<MemberModel> myCouponList(String m_id) {
		// TODO Auto-generated method stub
		return sqlSessionTemplate.selectList("member.myCouponList", m_id);
	}

	@Override
	public MemberModel idCheck(String m_id) {
		// TODO Auto-generated method stub
		return sqlSessionTemplate.selectOne("member.idCheck", m_id);
	}

}
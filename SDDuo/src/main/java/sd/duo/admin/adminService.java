package sd.duo.admin;

import java.util.List;

import javax.annotation.Resource;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Service;

import sd.duo.adminNotice.AdminNoticeModel;
import sd.duo.consulting.consultingModel;
import sd.duo.member.MemberModel;

@Service
public class adminService implements adminDao{
	@Resource(name="sqlSessionTemplate")
	private SqlSessionTemplate sqlSessionTemplate;
	
	
	@Override
	public List<MemberModel> memberList() {
		return sqlSessionTemplate.selectList("member.memberList");
	}


	@Override
	public List<consultingModel> noReplyList() {
		// TODO Auto-generated method stub
		return sqlSessionTemplate.selectList("consulting.noReplyList");
	}


	@Override
	public List<consultingModel> ReplyOkList() {
		// TODO Auto-generated method stub
		return sqlSessionTemplate.selectList("consulting.ReplyOkList");
	}


	@Override
	public int totalNoReply() {
		// TODO Auto-generated method stub
		return sqlSessionTemplate.selectOne("consulting.totalNoReply");
	}


	@Override
	public int totalReplyOk() {
		// TODO Auto-generated method stub
		return sqlSessionTemplate.selectOne("consulting.totalReplyOk");
	}


	@Override
	public List<MemberModel> memberSearch0(String search) {
		// TODO Auto-generated method stub
		return sqlSessionTemplate.selectList("member.memberSearch0", "%"+search+"%"); 
	}




}

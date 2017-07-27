package sd.duo.admin;

import java.util.List;

import sd.duo.consulting.consultingModel;
import sd.duo.member.MemberModel;

public interface adminDao {

	List<MemberModel> memberList();
	int totalMember();
	int totalMemberSearch(String search);
	List<consultingModel> noReplyList();
	List<consultingModel> ReplyOkList();
	int totalNoReply();
	int totalReplyOk();
	List<MemberModel> memberSearch0(String search);
}

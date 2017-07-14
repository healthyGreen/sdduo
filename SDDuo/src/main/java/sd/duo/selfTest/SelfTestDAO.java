package sd.duo.selfTest;

import java.util.List;

public interface SelfTestDAO {

	// 글쓰기
	int selfWrite(SelfTestModel selfTestModel);
	// 글 상세보기
	//int check1(String m_id);
	
	// 글목록
	SelfTestModel selfList(SelfTestModel selfModel);

	Object selfModify(SelfTestModel selfModel);
}

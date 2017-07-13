package sd.duo.selfTest;

import java.util.List;

public interface SelfTestDAO {

	// 글쓰기
	int selfWrite1(SelfTestModel selfModel);
	// 글 상세보기
	//int check1(String m_id);
	
	// 글목록
	List<SelfTestModel> selfList1(String m_id);

	Object selfModify1(SelfTestModel selfModel);
}

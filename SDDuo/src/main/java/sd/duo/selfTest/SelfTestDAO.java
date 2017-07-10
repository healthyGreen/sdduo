package sd.duo.selfTest;

import java.util.List;

public interface SelfTestDAO {

		//글쓰기
		int selfWrite(SelfTestModel selfModel);
		
		//글 상세보기
		SelfTestModel check(String m_id);
		
		Object selfModify1(String m_id);
		
		Object selfModify2(String m_id);
		
		Object selfModify3(String m_id);
		
		Object selfModify4(String m_id);
		
		//글목록
		List<SelfTestModel> selfList();

}

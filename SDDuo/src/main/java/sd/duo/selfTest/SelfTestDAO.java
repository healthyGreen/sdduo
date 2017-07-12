package sd.duo.selfTest;

import java.util.List;

public interface SelfTestDAO {

		//글쓰기
		int selfWrite1(SelfTestModel selfModel);
		
		//글 상세보기
		int check1(String m_id);
		
		
		
		//글목록
		List<SelfTestModel> selfList1(String m_id);
		
		//2
		
		//글쓰기
		int selfWrite2(SelfTestModel selfModel);
		
		//글 상세보기
		SelfTestModel check2(String m_id);
		
		Object selfModify2(String m_id);
		
		
		//글목록
		List<SelfTestModel> selfList2(String m_id);
		
		//3
		
		//글쓰기
		int selfWrite3(SelfTestModel selfModel);
		
		//글 상세보기
		SelfTestModel check3(String m_id);
		
		Object selfModify3(String m_id);
		
		
		//글목록
		List<SelfTestModel> selfList3(String m_id);
		
		//4
		
		//글쓰기
		int selfWrite4(SelfTestModel selfModel);
		
		//글 상세보기
		SelfTestModel check4(String m_id);
		
		Object selfModify4(String m_id);
		
		
		//글목록
		List<SelfTestModel> selfList4(String m_id);
		
		
		
		int newtechnology1(SelfTestModel selfModel);
		
		int newtechnology2(SelfTestModel selfModel);
		
		int newtechnology3(SelfTestModel selfModel);
		
		int newtechnology4(SelfTestModel selfModel);

		Object selfModify1(SelfTestModel selfModel);
		
		
		
		
		
		
		

		
		

}

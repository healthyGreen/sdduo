package sd.duo.selfTest;

import java.util.List;

public interface SelfTestDAO {

		//�۾���
		int selfWrite(SelfTestModel selfModel);
		
		//�� �󼼺���
		SelfTestModel check(String m_id);
		
		Object selfModify1(String m_id);
		
		Object selfModify2(String m_id);
		
		Object selfModify3(String m_id);
		
		Object selfModify4(String m_id);
		
		//�۸��
		List<SelfTestModel> selfList();

}

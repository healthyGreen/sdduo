package sd.duo.selfTest;

import java.util.List;

public interface SelfTestDAO {

		//�۾���
		int selfWrite1(SelfTestModel selfModel);
		
		//�� �󼼺���
		int check1(String m_id);
		
		
		
		//�۸��
		List<SelfTestModel> selfList1(String m_id);
		
		//2
		
		//�۾���
		int selfWrite2(SelfTestModel selfModel);
		
		//�� �󼼺���
		SelfTestModel check2(String m_id);
		
		Object selfModify2(String m_id);
		
		
		//�۸��
		List<SelfTestModel> selfList2(String m_id);
		
		//3
		
		//�۾���
		int selfWrite3(SelfTestModel selfModel);
		
		//�� �󼼺���
		SelfTestModel check3(String m_id);
		
		Object selfModify3(String m_id);
		
		
		//�۸��
		List<SelfTestModel> selfList3(String m_id);
		
		//4
		
		//�۾���
		int selfWrite4(SelfTestModel selfModel);
		
		//�� �󼼺���
		SelfTestModel check4(String m_id);
		
		Object selfModify4(String m_id);
		
		
		//�۸��
		List<SelfTestModel> selfList4(String m_id);
		
		
		
		int newtechnology1(SelfTestModel selfModel);
		
		int newtechnology2(SelfTestModel selfModel);
		
		int newtechnology3(SelfTestModel selfModel);
		
		int newtechnology4(SelfTestModel selfModel);

		Object selfModify1(SelfTestModel selfModel);
		
		
		
		
		
		
		

		
		

}

package sd.duo.selfTest;

import java.util.List;

public interface SelfTestDAO {

	// �۾���
	int selfWrite1(SelfTestModel selfModel);
	// �� �󼼺���
	//int check1(String m_id);
	
	// �۸��
	List<SelfTestModel> selfList1(String m_id);

	Object selfModify1(SelfTestModel selfModel);
}

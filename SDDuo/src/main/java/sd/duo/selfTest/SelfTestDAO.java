package sd.duo.selfTest;

import java.util.List;

public interface SelfTestDAO {

	// �۾���
	int selfWrite(SelfTestModel selfTestModel);
	// �� �󼼺���
	//int check1(String m_id);
	
	// �۸��
	SelfTestModel selfList(SelfTestModel selfModel);

	Object selfModify(SelfTestModel selfModel);
}

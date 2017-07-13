package sd.duo.selfTest;

import java.util.List;

import javax.annotation.Resource;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Service;



@Service
public class SelfTestService implements SelfTestDAO{
		
	@Resource
	private SqlSessionTemplate sqlSessionTemplate;
	
		@Override
		public List<SelfTestModel> selfList1(String m_id) {
		
			return sqlSessionTemplate.selectList("self.selfList1", m_id);
		}
	
		//�۾���
		@Override
		public int selfWrite1(SelfTestModel selfModel) {
			return sqlSessionTemplate.insert("self.selfWrite1", selfModel);
		}
		
		//�� �ϳ� �ҷ�����
		/*@Override
		public int check1(String m_id) {
			return sqlSessionTemplate.selectOne("self.check1", m_id); 
		}*/
		
		//ī�װ�1 ������Ʈ
		@Override
		public Object selfModify1(SelfTestModel selfModel) {
			return sqlSessionTemplate.update("self.selfModify1", selfModel); 
		}
		
	
}

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
		public List<SelfTestModel> selfList() {
		
			return sqlSessionTemplate.selectList("self.selfList");
		}
	
		//�۾���
		@Override
		public int selfWrite(SelfTestModel selfModel) {
			return sqlSessionTemplate.insert("self.selfWrite", selfModel);
		}
		
		//�� �ϳ� �ҷ�����
		@Override
		public SelfTestModel check(String m_id) {
			return sqlSessionTemplate.selectOne("self.check", m_id); 
		}
		
		//ī�װ�1 ������Ʈ
		@Override
		public Object selfModify1(String m_id) {
			return sqlSessionTemplate.update("self.selfModify1", m_id); 
		}
		
		//ī�װ�2 ������Ʈ
		@Override
		public Object selfModify2(String m_id) {
			return sqlSessionTemplate.update("self.selfModify2", m_id); 
		}
		
		//ī�װ�3 ������Ʈ
		@Override
		public Object selfModify3(String m_id) {
			return sqlSessionTemplate.update("self.selfModify3", m_id); 
		}
		
		//ī�װ�4 ������Ʈ
		@Override
		public Object selfModify4(String m_id) {
			return sqlSessionTemplate.update("self.selfModify4", m_id); 
		}
	
}

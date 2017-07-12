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
	
		//글쓰기
		@Override
		public int selfWrite1(SelfTestModel selfModel) {
			return sqlSessionTemplate.insert("self.selfWrite1", selfModel);
		}
		
		//글 하나 불러오기
		@Override
		public int check1(String m_id) {
			return sqlSessionTemplate.selectOne("self.check1", m_id); 
		}
		
		//카테고리1 업데이트
		@Override
		public Object selfModify1(SelfTestModel selfModel) {
			return sqlSessionTemplate.update("self.selfModify1", selfModel); 
		}
		

		@Override
		public List<SelfTestModel> selfList2(String m_id) {
		
			return sqlSessionTemplate.selectList("self.selfList2", m_id);
		}
	
		//글쓰기
		@Override
		public int selfWrite2(SelfTestModel selfModel) {
			return sqlSessionTemplate.insert("self.selfWrite2", selfModel);
		}
		
		//글 하나 불러오기
		@Override
		public SelfTestModel check2(String m_id) {
			return sqlSessionTemplate.selectOne("self.check2", m_id); 
		}
		
		//카테고리1 업데이트
		@Override
		public Object selfModify2(String m_id) {
			return sqlSessionTemplate.update("self.selfModify2", m_id); 
		}
		
		
		//3
		
		@Override
		public List<SelfTestModel> selfList3(String m_id) {
		
			return sqlSessionTemplate.selectList("self.selfList3", m_id);
		}
	
		//글쓰기
		@Override
		public int selfWrite3(SelfTestModel selfModel) {
			return sqlSessionTemplate.insert("self.selfWrite3", selfModel);
		}
		
		//글 하나 불러오기
		@Override
		public SelfTestModel check3(String m_id) {
			return sqlSessionTemplate.selectOne("self.check3", m_id); 
		}
		
		//카테고리1 업데이트
		@Override
		public Object selfModify3(String m_id) {
			return sqlSessionTemplate.update("self.selfModify3", m_id); 
		}
		
		
		//4
		
		@Override
		public List<SelfTestModel> selfList4(String m_id) {
		
			return sqlSessionTemplate.selectList("self.selfList4", m_id);
		}
	
		//글쓰기
		@Override
		public int selfWrite4(SelfTestModel selfModel) {
			return sqlSessionTemplate.insert("self.selfWrite4", selfModel);
		}
		
		//글 하나 불러오기
		@Override
		public SelfTestModel check4(String m_id) {
			return sqlSessionTemplate.selectOne("self.check4", m_id); 
		}
		
		//카테고리1 업데이트
		@Override
		public Object selfModify4(String m_id) {
			return sqlSessionTemplate.update("self.selfModify4", m_id); 
		}
		
		
		
		@Override
		public int newtechnology1(SelfTestModel selfModel) {
			
			int a =sqlSessionTemplate.insert("self.newtechnology1", selfModel);
			System.out.println(a);
			return sqlSessionTemplate.insert("self.newtechnology1", selfModel);
		}
		
		@Override
		public int newtechnology2(SelfTestModel selfModel) {
			return sqlSessionTemplate.insert("self.newtechnology2", selfModel);
		}
		
		@Override
		public int newtechnology3(SelfTestModel selfModel) {
			return sqlSessionTemplate.insert("self.newtechnology3", selfModel);
		}
		
		@Override
		public int newtechnology4(SelfTestModel selfModel) {
			return sqlSessionTemplate.insert("self.newtechnology4", selfModel);
		}
		
		
		
		
		
	
}

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
		public SelfTestModel selfList(SelfTestModel selfTestModel) {
		
			return sqlSessionTemplate.selectOne("self.selfList", selfTestModel);
		}
	
		//글쓰기
		@Override
		public int selfWrite(SelfTestModel selfModel) {
			return sqlSessionTemplate.insert("self.selfWrite", selfModel);
		}
		
		//글 하나 불러오기
		/*@Override
		public int check1(String m_id) {
			return sqlSessionTemplate.selectOne("self.check1", m_id); 
		}*/
		
		//카테고리1 업데이트
		@Override
		public Object selfModify(SelfTestModel selfModel) {
			return sqlSessionTemplate.update("self.selfModify", selfModel); 
		}
		
	
}

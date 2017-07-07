package sd.duo.selfTest;

import javax.annotation.Resource;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Service;

@Service
public class SelfTestService implements SelfTestDAO{
		
	@Resource
	private SqlSessionTemplate sqlSessionTemplate;
	
	//±Û¾²±â
		@Override
		public int selfWrite(SelfTestModel selfModel) {
			return sqlSessionTemplate.insert("self.selfWrite", selfModel);
		}
	
	
}

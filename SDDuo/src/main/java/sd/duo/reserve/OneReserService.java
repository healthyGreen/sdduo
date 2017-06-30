package sd.duo.reserve;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;
import org.mybatis.spring.SqlSessionTemplate;

@Service(value="oneReserService")
public class OneReserService implements OneReserDAO{
	
	@Resource(name="sqlSessionTemplate")
	   private SqlSessionTemplate sqlSessionTemplate;

	@Override
	public void insertOneReser(OneReserModel oneReserModel) {
		// TODO Auto-generated method stub
		sqlSessionTemplate.selectOne("reserve.OneReserve", oneReserModel);
	}
	

}

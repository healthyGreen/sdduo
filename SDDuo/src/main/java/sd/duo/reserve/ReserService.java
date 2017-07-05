package sd.duo.reserve;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;
import org.mybatis.spring.SqlSessionTemplate;

@Service(value="ReserService")
public class ReserService implements ReserDAO{
	
	@Resource(name="sqlSessionTemplate")
	   private SqlSessionTemplate sqlSessionTemplate;

	@Override
	public int insertOneReser(OneReserModel oneReserModel) {
		// TODO Auto-generated method stub
		return sqlSessionTemplate.insert("reserve.OneReserve", oneReserModel);
	}
	
	@Override
	public int insertGroupReser(GroupReserModel groupReserModel){
		return sqlSessionTemplate.insert("reserve.GroupReserve", groupReserModel);
	}

	@Override
	public List<GroupReserModel> GrReserList() {
		// TODO Auto-generated method stub
		return sqlSessionTemplate.selectList("reserve.grSelect");
	}
	
	@Override
	public List<OneReserModel> oneReserList() {
	   // TODO Auto-generated method stub
	   return sqlSessionTemplate.selectList("reserve.oneSelect");
	}

}

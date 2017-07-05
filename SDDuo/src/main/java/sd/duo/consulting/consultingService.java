package sd.duo.consulting;

import java.util.List;

import javax.annotation.Resource;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Service;

@Service
public class consultingService implements consultingDao {
	@Resource(name="sqlSessionTemplate")
	public SqlSessionTemplate sqlSessionTemplate;
	
	@Override
	public List<consultingModel> consultingList() {
		// TODO Auto-generated method stub
		return sqlSessionTemplate.selectList("consulting.consultingList");
	}

	@Override
	public consultingModel consultingView(int c_number) {
		// TODO Auto-generated method stub
		return sqlSessionTemplate.selectOne("consulting.consultingView", c_number);
	}

	@Override
	public int insertConsulting(consultingModel consultingmodel) {
		return sqlSessionTemplate.insert("consulting.insertConsulting", consultingmodel);
	}

	
	@Override
	public int modConsulting(consultingModel consultingmodel) {
		// TODO Auto-generated method stub
		return sqlSessionTemplate.update("consulting.modConsulting", consultingmodel);
	}

	@Override
	public int deleteConsulting(int c_number) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int totalConsultingNum() {
		// TODO Auto-generated method stub
		return sqlSessionTemplate.selectOne("consulting.totalConsultingNum");
	}

	@Override
	public int insertConsultingReply(consultingModel consultingmodel) {
		// TODO Auto-generated method stub
		return sqlSessionTemplate.insert("consulting.insertConsultingReply", consultingmodel);
	}

	@Override
	public consultingModel consultingPass(consultingModel consultingmodel) {
		// TODO Auto-generated method stub
		return sqlSessionTemplate.selectOne("consulting.consultingPass", consultingmodel);
	}
	
}

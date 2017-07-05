package sd.duo.admin;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import sd.duo.reserve.OneReserModel;
import sd.duo.reserve.ReserDAO;

import org.mybatis.spring.SqlSessionTemplate;

import org.springframework.stereotype.Service;
import org.mybatis.spring.SqlSessionTemplate;

@Service
public class AdminReserService implements AdminReserDAO{
	
	@Resource(name="sqlSessionTemplate")
	   private SqlSessionTemplate sqlSessionTemplate;

	@Override
	public List<OneReserModel> OneReserList_G() {
		// TODO Auto-generated method stub
		return sqlSessionTemplate.selectList("");
	}

}

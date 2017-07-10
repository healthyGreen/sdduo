package sd.duo.admin;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import sd.duo.reserve.GroupReserModel;
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
	public List<OneReserModel> OneReserList(String pr_center) {
		// TODO Auto-generated method stub
		return sqlSessionTemplate.selectList("reserve.OneCenterList", pr_center);
	}
	
	@Override
	public List<GroupReserModel> GroupReserList(String gr_center) {
		// TODO Auto-generated method stub
		return sqlSessionTemplate.selectList("reserve.GrCenterList", gr_center);
	}

	@Override
	public OneReserModel OneReserView(int pr_number) {
		// TODO Auto-generated method stub
		System.out.println(pr_number);
		return sqlSessionTemplate.selectOne("reserve.OneReserView", pr_number);
	}
	
	@Override
	public int OneReserModify(OneReserModel OneReserModel) {
		// TODO Auto-generated method stub
		return sqlSessionTemplate.update("reserve.OneReserModify", OneReserModel);
		
	}
	
	@Override
	public GroupReserModel GroupReserView(int gr_number) {
		// TODO Auto-generated method stub
		return sqlSessionTemplate.selectOne("reserve.GroupReserView", gr_number);
	}
	
	@Override
	public int GroupReserModify(GroupReserModel groupReserModel) {
		// TODO Auto-generated method stub
		return sqlSessionTemplate.update("reserve.GroupReserModify", groupReserModel);
	}

}

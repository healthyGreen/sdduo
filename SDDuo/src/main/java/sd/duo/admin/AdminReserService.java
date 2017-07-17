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

	//�⺻����Ʈ
	@Override
	public List<OneReserModel> OneReserList(String pr_center) {
		// TODO Auto-generated method stub
		return sqlSessionTemplate.selectList("reserve.OneCenterList", pr_center);
	}
	
	//�����ϼ�
		@Override
		public List<OneReserModel> OneReserListRenew(String pr_center) {
			// TODO Auto-generated method stub
			return sqlSessionTemplate.selectList("reserve.OneCenterList", pr_center);
		}
	
	//����ϼ�(�ֽż�)
	@Override
	public List<OneReserModel> OneReserListNew(String pr_center) {
		// TODO Auto-generated method stub
		return sqlSessionTemplate.selectList("reserve.OneCenterList_New", pr_center);
	}
	
	//������
	@Override
	public List<OneReserModel> OneReserListWait(String pr_center) {
		// TODO Auto-generated method stub
		return sqlSessionTemplate.selectList("reserve.OneCenterList_Wait", pr_center);
	}
	
	// ��¥�˻� ����Ʈ
	@Override
	public List<OneReserModel> OneReserListDay(OneReserModel oneReserModel) {
		// TODO Auto-generated method stub
		return sqlSessionTemplate.selectList("reserve.OneCenterListDay", oneReserModel);
	}
	
	//�⺻����Ʈ
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

	@Override
	public int OneReserDelete(int pr_number) {
		// TODO Auto-generated method stub
		return sqlSessionTemplate.delete("reserve.OneReserDelete", pr_number);
	}

	@Override
	public int GrReserDelete(int gr_number) {
		// TODO Auto-generated method stub
		return sqlSessionTemplate.delete("reserve.GrReserDelete", gr_number);
	}

	//�����ϼ�
	@Override
	public List<GroupReserModel> GroupReserListRenew(String gr_center) {
		// TODO Auto-generated method stub
		return sqlSessionTemplate.selectList("reserve.GrCenterList", gr_center);
	}

	//����ϼ�(�ֽż�)
	@Override
	public List<GroupReserModel> GroupReserListNew(String gr_center) {
		// TODO Auto-generated method stub
		return sqlSessionTemplate.selectList("reserve.GrCenterList_New", gr_center);
	}

	//������
	@Override
	public List<GroupReserModel> GroupReserListWait(String gr_center) {
		// TODO Auto-generated method stub
		return sqlSessionTemplate.selectList("reserve.GrCenterList_Wait", gr_center);
	}

	//��¥ �˻� ����Ʈ(�׷�)
	@Override
	public List<GroupReserModel> GroupReserListDay(GroupReserModel groupReserModel) {
		// TODO Auto-generated method stub
		return sqlSessionTemplate.selectList("reserve.GrCenterListDay", groupReserModel);
	}

	


}

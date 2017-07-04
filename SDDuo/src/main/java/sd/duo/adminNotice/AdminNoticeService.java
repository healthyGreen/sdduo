package sd.duo.adminNotice;

import java.util.List;
import javax.annotation.Resource;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Service;

import sd.duo.adminNotice.AdminNoticeDAO;
import sd.duo.adminNotice.AdminNoticeModel;


@Service
public class AdminNoticeService implements AdminNoticeDAO{
	
	@Resource
	private SqlSessionTemplate sqlSessionTemplate;
	
	//�۸��
	@Override
	public List<AdminNoticeModel> noticeList() {
	
		return sqlSessionTemplate.selectList("notice.noticeList");
	}

	//�۾���
	@Override
	public int noticeWrite(AdminNoticeModel noticeModel) {
		return sqlSessionTemplate.insert("notice.noticeWrite", noticeModel);
	}
	
	//�� �ϳ� �ҷ�����
	@Override
	public AdminNoticeModel noticeView(int n_number) {
		return sqlSessionTemplate.selectOne("notice.noticeView",n_number); 
	}
	
	//��ȸ�� ����
	@Override
	public int noticeUpdateReadcount(int n_number) {
		return sqlSessionTemplate.update("notice.noticeUpdateReadcount",n_number); 
	}

	//�������� �˻�
	@Override
	public List<AdminNoticeModel> noticeSearch0(String search) {
		return sqlSessionTemplate.selectList("notice.noticeSearch0", "%"+search+"%"); 
	}
	
	//�������� �˻�
	@Override
	public List<AdminNoticeModel> noticeSearch1(String search) {
		return sqlSessionTemplate.selectList("notice.noticeSearch1", "%"+search+"%"); 
	}
	

	//�ۼ���
	@Override
	public int noticeModify(AdminNoticeModel noticeModel) {
		return sqlSessionTemplate.update("notice.noticeModify",noticeModel); 
	}

	//�ۻ���
	@Override
	public int noticeDelete(int n_number) {
		return sqlSessionTemplate.update("notice.noticeDelete",n_number); 
	}
}
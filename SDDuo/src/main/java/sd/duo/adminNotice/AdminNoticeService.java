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
	
	//글목록
	@Override
	public List<AdminNoticeModel> noticeList() {
	
		return sqlSessionTemplate.selectList("notice.noticeList");
	}

	//글쓰기
	@Override
	public int noticeWrite(AdminNoticeModel noticeModel) {
		return sqlSessionTemplate.insert("notice.noticeWrite", noticeModel);
	}
	
	//글 하나 불러오기
	@Override
	public AdminNoticeModel noticeView(int n_number) {
		return sqlSessionTemplate.selectOne("notice.noticeView",n_number); 
	}
	
	//조회수 증가
	@Override
	public int noticeUpdateReadcount(int n_number) {
		return sqlSessionTemplate.update("notice.noticeUpdateReadcount",n_number); 
	}

	//제목으로 검색
	@Override
	public List<AdminNoticeModel> noticeSearch0(String search) {
		return sqlSessionTemplate.selectList("notice.noticeSearch0", "%"+search+"%"); 
	}
	
	//내용으로 검색
	@Override
	public List<AdminNoticeModel> noticeSearch1(String search) {
		return sqlSessionTemplate.selectList("notice.noticeSearch1", "%"+search+"%"); 
	}
	

	//글수정
	@Override
	public int noticeModify(AdminNoticeModel noticeModel) {
		return sqlSessionTemplate.update("notice.noticeModify",noticeModel); 
	}

	//글삭제
	@Override
	public int noticeDelete(int n_number) {
		return sqlSessionTemplate.update("notice.noticeDelete",n_number); 
	}
}
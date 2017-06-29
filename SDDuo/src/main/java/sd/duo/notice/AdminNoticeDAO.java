package sd.duo.notice;

import java.util.List;

public interface AdminNoticeDAO {

	//글목록
	List<AdminNoticeModel> noticeList();

	//글쓰기
	int noticeWrite(AdminNoticeModel noticeModel);

	//글 상세보기
	AdminNoticeModel noticeView(int n_number);
	
	//조회수 증가
	int noticeUpdateReadcount(int n_number);

	//검색 (0=제목, 1=내용)
	List<AdminNoticeModel> noticeSearch0(String search);
	List<AdminNoticeModel> noticeSearch1(String search);
	
	//글수정
	int noticeModify(AdminNoticeModel noticeModel);

	//글삭제
	int noticeDelete(int n_number);
	
}
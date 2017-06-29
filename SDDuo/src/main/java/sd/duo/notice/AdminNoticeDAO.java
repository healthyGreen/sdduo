package sd.duo.notice;

import java.util.List;

public interface AdminNoticeDAO {

	//�۸��
	List<AdminNoticeModel> noticeList();

	//�۾���
	int noticeWrite(AdminNoticeModel noticeModel);

	//�� �󼼺���
	AdminNoticeModel noticeView(int n_number);
	
	//��ȸ�� ����
	int noticeUpdateReadcount(int n_number);

	//�˻� (0=����, 1=����)
	List<AdminNoticeModel> noticeSearch0(String search);
	List<AdminNoticeModel> noticeSearch1(String search);
	
	//�ۼ���
	int noticeModify(AdminNoticeModel noticeModel);

	//�ۻ���
	int noticeDelete(int n_number);
	
}
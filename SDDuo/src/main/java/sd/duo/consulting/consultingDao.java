package sd.duo.consulting;

import java.util.List;

public interface consultingDao {
	List<consultingModel> consultingList();
	consultingModel consultingView(int c_number);
	consultingModel consultingPass(consultingModel consultingmodel);
	int updateConsultingState(int c_number);
	int insertConsulting(consultingModel consultingmodel);
	int insertConsultingReply(consultingModel consultingmodel);
	int modConsulting(consultingModel consultingmodel);
	int deleteConsulting(int c_number);
	int totalConsultingNum();
	List<consultingModel> myConsultingList(String m_id);
	int myTotalConsultingNum(String m_id);
}
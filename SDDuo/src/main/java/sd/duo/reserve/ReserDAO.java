package sd.duo.reserve;

import java.util.List;

import org.springframework.stereotype.Repository;

@Repository(value="ReserDAO")
public interface ReserDAO {

	//개인 예약
	public int insertOneReser(OneReserModel oneReserModel);
	
	//그룹예약
	public int insertGroupReser(GroupReserModel groupReserModel);
	
	//개인예약 리스트
	List<OneReserModel> oneReserList();
	
	//그룹예약 리스트
	List<GroupReserModel> GrReserList();
	
	//마이페이지 개인예약 리스트
	List<OneReserModel> myOneReserList(String m_id);
	
	//마이페이지 그룹예약 리스트
	List<GroupReserModel> myGroupReserList(String m_id);
	
	public int myTotalReserNum(String m_id);

	public int myGroupTotalReserNum(String m_id);
	
	//개인예약 센터 날짜 시간 중복 금지
	OneReserModel timeCheck(OneReserModel oneReserModel);
	
	//그룹예약 센터 날짜 시간 중복 금지
	GroupReserModel timeCheck(GroupReserModel groupReserModel);

}

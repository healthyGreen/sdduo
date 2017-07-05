package sd.duo.reserve;

import java.util.List;

import org.springframework.stereotype.Repository;

@Repository(value="ReserDAO")
public interface ReserDAO {

	/*개인예약 등록*/ 
	public int insertOneReser(OneReserModel oneReserModel);
	 
	 /*public OneReserModel insertOneReser(String id);
	 
	 public OneReserModel insertOneReser(int no);*/
	
	/*그룹예약 등록*/
	public int insertGroupReser(GroupReserModel groupReserModel);
	
	// 개인예약 목록
	List<OneReserModel> oneReserList();
	
	// 그룹예약 목록
	List<GroupReserModel> GrReserList();
}

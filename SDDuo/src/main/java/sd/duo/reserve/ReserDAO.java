package sd.duo.reserve;

import org.springframework.stereotype.Repository;

@Repository(value="oneReserDAO")
public interface ReserDAO {

	/*개인예약 등록*/ 
	public int insertOneReser(OneReserModel oneReserModel);
	 
	 /*public OneReserModel insertOneReser(String id);
	 
	 public OneReserModel insertOneReser(int no);*/
	
	/*그룹예약 등록*/
	public int insertGroupReser(GroupReserModel groupReserModel);
}

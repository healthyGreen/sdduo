package sd.duo.reserve;

import org.springframework.stereotype.Repository;

@Repository(value="oneReserDAO")
public interface ReserDAO {

	/*���ο��� ���*/ 
	public int insertOneReser(OneReserModel oneReserModel);
	 
	 /*public OneReserModel insertOneReser(String id);
	 
	 public OneReserModel insertOneReser(int no);*/
	
	/*�׷쿹�� ���*/
	public int insertGroupReser(GroupReserModel groupReserModel);
}

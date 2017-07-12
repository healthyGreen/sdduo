package sd.duo.reserve;

import java.util.List;

import org.springframework.stereotype.Repository;

@Repository(value="ReserDAO")
public interface ReserDAO {

	/*���ο��� ���*/ 
	public int insertOneReser(OneReserModel oneReserModel);
	 
	 /*public OneReserModel insertOneReser(String id);
	 
	 public OneReserModel insertOneReser(int no);*/
	
	/*�׷쿹�� ���*/
	public int insertGroupReser(GroupReserModel groupReserModel);
	
	// ���ο��� ���
	List<OneReserModel> oneReserList();
	
	// �׷쿹�� ���
	List<GroupReserModel> GrReserList();
	
	List<OneReserModel> myOneReserList(String m_id);
	
	List<GroupReserModel> myGroupReserList(String m_id);
	
	public int myTotalReserNum(String m_id);

}

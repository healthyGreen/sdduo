package sd.duo.reserve;

import org.springframework.stereotype.Repository;

@Repository(value="oneReserDAO")
public interface OneReserDAO {

	 public void insertOneReser(OneReserModel oneReserModel);
	 
	 /*public OneReserModel insertOneReser(String id);
	 
	 public OneReserModel insertOneReser(int no);*/
}

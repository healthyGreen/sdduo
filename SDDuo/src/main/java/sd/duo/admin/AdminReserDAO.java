package sd.duo.admin;

import java.util.List;

import org.springframework.stereotype.Repository;

import sd.duo.reserve.GroupReserModel;
import sd.duo.reserve.OneReserModel;

public interface AdminReserDAO {

   /*List<GroupReserModel> GrReserList();*/

   List<OneReserModel> OneReserList_G();

}
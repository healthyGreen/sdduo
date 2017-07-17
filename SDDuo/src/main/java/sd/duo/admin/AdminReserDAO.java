package sd.duo.admin;

import java.util.List;

import org.springframework.stereotype.Repository;

import sd.duo.reserve.GroupReserModel;
import sd.duo.reserve.OneReserModel;

public interface AdminReserDAO {

   /*List<GroupReserModel> GrReserList();*/

   List<OneReserModel> OneReserList(String pr_center);
   
   List<GroupReserModel> GroupReserList(String gr_center);

   OneReserModel OneReserView(int pr_number);

   int OneReserModify(OneReserModel OneReserModel);

   GroupReserModel GroupReserView(int gr_number);

   int GroupReserModify(GroupReserModel groupReserModel);
   
   int OneReserDelete(int pr_number);
   
   int GrReserDelete(int gr_number);

   List<OneReserModel> OneReserListNew(String pr_center);

   List<OneReserModel> OneReserListWait(String pr_center);

   List<OneReserModel> OneReserListRenew(String pr_center);

   List<GroupReserModel> GroupReserListRenew(String gr_center);

   List<GroupReserModel> GroupReserListNew(String gr_center);

   List<GroupReserModel> GroupReserListWait(String gr_center);

   List<OneReserModel> OneReserListDay(OneReserModel oneReserModel);

   List<GroupReserModel> GroupReserListDay(GroupReserModel groupReserModel);
   

}
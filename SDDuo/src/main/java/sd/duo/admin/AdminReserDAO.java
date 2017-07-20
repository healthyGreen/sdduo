package sd.duo.admin;

import java.util.List;

import org.springframework.stereotype.Repository;

import sd.duo.reserve.GroupReserModel;
import sd.duo.reserve.OneReserModel;

public interface AdminReserDAO {

	// 관리자 페이지 개인예약 리스트 불러오기
   List<OneReserModel> OneReserList(String pr_center);
   
   // 관리자 페이지 그룹예약 리스트 불러오기
   List<GroupReserModel> GroupReserList(String gr_center);

   // 개인예약 상세보기
   OneReserModel OneReserView(int pr_number);

   // 개인예약 수정
   int OneReserModify(OneReserModel OneReserModel);

   // 그릅예약 상세보기
   GroupReserModel GroupReserView(int gr_number);

   // 그룹예약 수정
   int GroupReserModify(GroupReserModel groupReserModel);
   
   // 개인예약 삭제
   int OneReserDelete(int pr_number);
   
   // 그룹예약 삭제
   int GrReserDelete(int gr_number);

   // 개인예약 최신순 정렬
   List<OneReserModel> OneReserListNew(String pr_center);

   // 개인예약 예약대기 정렬(순서는 예약번호순)
   List<OneReserModel> OneReserListWait(String pr_center);

   // 개인예약 예약일순 정렬
   List<OneReserModel> OneReserListRenew(String pr_center);

   // 그룹예약 예약일순 정렬
   List<GroupReserModel> GroupReserListRenew(String gr_center);

   // 그룹예약 최신순 정렬
   List<GroupReserModel> GroupReserListNew(String gr_center);

   // 그룹예약 예약대기 정렬
   List<GroupReserModel> GroupReserListWait(String gr_center);

   // 개인예약 날짜별 검색
   List<OneReserModel> OneReserListDay(OneReserModel oneReserModel);

   // 그룹예약 예약날짜별 검색
   List<GroupReserModel> GroupReserListDay(GroupReserModel groupReserModel);
   

}
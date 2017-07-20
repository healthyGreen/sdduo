package sd.duo.admin;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import sd.duo.reserve.GroupReserModel;
import sd.duo.reserve.OneReserModel;
import sd.duo.reserve.ReserDAO;

import org.mybatis.spring.SqlSessionTemplate;

import org.springframework.stereotype.Service;
import org.mybatis.spring.SqlSessionTemplate;

@Service
public class AdminReserService implements AdminReserDAO{
	
	@Resource(name="sqlSessionTemplate")
	   private SqlSessionTemplate sqlSessionTemplate;

	// 관리자 페이지 개인예약 리스트 불러오기
	@Override
	public List<OneReserModel> OneReserList(String pr_center) {
		// TODO Auto-generated method stub
		return sqlSessionTemplate.selectList("reserve.OneCenterList", pr_center);
	}
	
	// 개인예약 예약일순 정렬
	@Override
	public List<OneReserModel> OneReserListRenew(String pr_center) {
		// TODO Auto-generated method stub
		return sqlSessionTemplate.selectList("reserve.OneCenterList", pr_center);
	}
	
	// 개인예약 최신순 정렬
	@Override
	public List<OneReserModel> OneReserListNew(String pr_center) {
		// TODO Auto-generated method stub
		return sqlSessionTemplate.selectList("reserve.OneCenterList_New", pr_center);
	}
	
	// 개인예약 예약대기 정렬(순서는 예약번호순)
	@Override
	public List<OneReserModel> OneReserListWait(String pr_center) {
		// TODO Auto-generated method stub
		return sqlSessionTemplate.selectList("reserve.OneCenterList_Wait", pr_center);
	}
	
	// 개인예약 날짜별 검색
	@Override
	public List<OneReserModel> OneReserListDay(OneReserModel oneReserModel) {
		// TODO Auto-generated method stub
		return sqlSessionTemplate.selectList("reserve.OneCenterListDay", oneReserModel);
	}
	
	// 관리자 페이지 그룹예약 리스트 불러오기
	@Override
	public List<GroupReserModel> GroupReserList(String gr_center) {
		// TODO Auto-generated method stub
		return sqlSessionTemplate.selectList("reserve.GrCenterList", gr_center);
	}
	
	// 개인예약 상세보기
	@Override
	public OneReserModel OneReserView(int pr_number) {
		// TODO Auto-generated method stub
		System.out.println(pr_number);
		return sqlSessionTemplate.selectOne("reserve.OneReserView", pr_number);
	}
	
	// 개인예약 수정
	@Override
	public int OneReserModify(OneReserModel OneReserModel) {
		// TODO Auto-generated method stub
		return sqlSessionTemplate.update("reserve.OneReserModify", OneReserModel);
		
	}
	
	// 그릅예약 상세보기
	@Override
	public GroupReserModel GroupReserView(int gr_number) {
		// TODO Auto-generated method stub
		return sqlSessionTemplate.selectOne("reserve.GroupReserView", gr_number);
	}
	
	// 그룹예약 수정
	@Override
	public int GroupReserModify(GroupReserModel groupReserModel) {
		// TODO Auto-generated method stub
		return sqlSessionTemplate.update("reserve.GroupReserModify", groupReserModel);
	}

	// 개인예약 삭제
	@Override
	public int OneReserDelete(int pr_number) {
		// TODO Auto-generated method stub
		return sqlSessionTemplate.delete("reserve.OneReserDelete", pr_number);
	}

	// 그룹예약 삭제
	@Override
	public int GrReserDelete(int gr_number) {
		// TODO Auto-generated method stub
		return sqlSessionTemplate.delete("reserve.GrReserDelete", gr_number);
	}

	// 그룹예약 예약일순 정렬
	@Override
	public List<GroupReserModel> GroupReserListRenew(String gr_center) {
		// TODO Auto-generated method stub
		return sqlSessionTemplate.selectList("reserve.GrCenterList", gr_center);
	}

	// 그룹예약 최신순 정렬
	@Override
	public List<GroupReserModel> GroupReserListNew(String gr_center) {
		// TODO Auto-generated method stub
		return sqlSessionTemplate.selectList("reserve.GrCenterList_New", gr_center);
	}

	// 그룹예약 예약대기 정렬
	@Override
	public List<GroupReserModel> GroupReserListWait(String gr_center) {
		// TODO Auto-generated method stub
		return sqlSessionTemplate.selectList("reserve.GrCenterList_Wait", gr_center);
	}

	// 그룹예약 예약날짜별 검색
	@Override
	public List<GroupReserModel> GroupReserListDay(GroupReserModel groupReserModel) {
		// TODO Auto-generated method stub
		return sqlSessionTemplate.selectList("reserve.GrCenterListDay", groupReserModel);
	}

	


}

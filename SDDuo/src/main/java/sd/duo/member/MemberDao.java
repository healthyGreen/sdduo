package sd.duo.member;

public interface MemberDao {

   public MemberModel memberLogin(MemberModel member);

   public MemberModel getMember(String id);

   public Object insertMember(MemberModel member);

   public MemberModel idFind(MemberModel member);
   
   public MemberModel pwFind(MemberModel member);

   public Object memberModify(MemberModel member);

   public Object memberDelete(String id);
   
   public MemberModel memberList(MemberModel member);
}
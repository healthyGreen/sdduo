package sd.duo.member;

import java.util.Date;

public class MemberModel {

   private int member_no;
   private String id;
   private String pass;
   private String pass2;
   private String name;
   private String birth;
   private String phone;
   private String email;
   private Date reg_date;
   private String coupon;
   private String zipcode;
   private String addr;
   private String addr2;
   
   
   public int getMember_no() {
      return member_no;
   }
   public void setMember_no(int member_no) {
      this.member_no = member_no;
   }
   public String getId() {
      return id;
   }
   public void setId(String id) {
      this.id = id;
   }
   public String getPass() {
      return pass;
   }
   public void setPass(String pass) {
      this.pass = pass;
   }
   public String getPass2() {
      return pass2;
   }
   public void setPass2(String pass2) {
      this.pass2 = pass2;
   }
   public String getName() {
      return name;
   }
   public void setName(String name) {
      this.name = name;
   }
   public String getBirth() {
      return birth;
   }
   public void setBirth(String birth) {
      this.birth = birth;
   }
   public String getPhone() {
      return phone;
   }
   public void setPhone(String phone) {
      this.phone = phone;
   }
   public String getEmail() {
      return email;
   }
   public void setEmail(String email) {
      this.email = email;
   }
   public Date getReg_date() {
      return reg_date;
   }
   public void setReg_date(Date reg_date) {
      this.reg_date = reg_date;
   }
   public String getCoupon() {
      return coupon;
   }
   public void setCoupon(String coupon) {
      this.coupon = coupon;
   }
   public String getZipcode() {
      return zipcode;
   }
   public void setZipcode(String zipcode) {
      this.zipcode = zipcode;
   }
   public String getAddr() {
      return addr;
   }
   public void setAddr(String addr) {
      this.addr = addr;
   }
   public String getAddr2() {
      return addr2;
   }
   public void setAddr2(String addr2) {
      this.addr2 = addr2;
   }

}
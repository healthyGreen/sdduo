package sd.duo.adminNotice;

import java.util.Date;

public class AdminNoticeModel {
	
	private int n_number;
	private String n_title;
	private String n_name;
	private Date n_date;
	private int n_hit=0;
	private String n_content;
	private String n_org_image="";
	private String n_sav_image="";
	
	
	
	
	public int getN_number() {
		return n_number;
	}
	public void setN_number(int n_number) {
		this.n_number = n_number;
	}
	public String getN_title() {
		return n_title;
	}
	public void setN_title(String n_title) {
		this.n_title = n_title;
	}
	public String getN_name() {
		return n_name;
	}
	public void setN_name(String n_name) {
		this.n_name = n_name;
	}
	public Date getN_date() {
		return n_date;
	}
	public void setN_date(Date n_date) {
		this.n_date = n_date;
	}
	public int getN_hit() {
		return n_hit;
	}
	public void setN_hit(int n_hit) {
		this.n_hit = n_hit;
	}
	public String getN_content() {
		return n_content;
	}
	public void setN_content(String n_content) {
		this.n_content = n_content;
	}
	public String getN_org_image() {
		return n_org_image;
	}
	public void setN_org_image(String n_org_image) {
		this.n_org_image = n_org_image;
	}
	public String getN_sav_image() {
		return n_sav_image;
	}
	public void setN_sav_image(String n_sav_image) {
		this.n_sav_image = n_sav_image;
	}
	
	

}

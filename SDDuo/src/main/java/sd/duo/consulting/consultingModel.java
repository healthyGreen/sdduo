package sd.duo.consulting;

import java.util.Date;

public class consultingModel {
	
	private int c_number;
	private String c_title;
	private String c_content;
	private String c_pass;
	private String c_m_id;
	private Date c_date;
	private int c_re_status;
	private int c_ref;
	
	public int getC_number() {
		return c_number;
	}
	public void setC_number(int c_number) {
		this.c_number = c_number;
	}
	public String getC_title() {
		return c_title;
	}
	public void setC_title(String c_title) {
		this.c_title = c_title;
	}
	public String getC_content() {
		return c_content;
	}
	public void setC_content(String c_content) {
		this.c_content = c_content;
	}
	public String getC_pass() {
		return c_pass;
	}
	public void setC_pass(String c_pass) {
		this.c_pass = c_pass;
	}
	public String getC_m_id() {
		return c_m_id;
	}
	public void setC_m_id(String c_m_id) {
		this.c_m_id = c_m_id;
	}
	public Date getC_date() {
		return c_date;
	}
	public void setC_date(Date c_date) {
		this.c_date = c_date;
	}
	
	public int getC_re_status() {
		return c_re_status;
	}
	public void setC_re_status(int c_re_status) {
		this.c_re_status = c_re_status;
	}
	public int getC_ref() {
		return c_ref;
	}
	public void setC_ref(int c_ref) {
		this.c_ref = c_ref;
	}
}

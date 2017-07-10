package sd.duo.selfTest;

public class SelfTestModel {
	
	private String t_category=""; //진단유형
	private String m_id=""; 	//사용자아이디
	private int t_score;	//점수
	private String t_grade; //등급
	
	
	public String getT_category() {
		return t_category;
	}
	public void setT_category(String t_category) {
		this.t_category = t_category;
	}
	public String getM_id() {
		return m_id;
	}
	public void setM_id(String m_id) {
		this.m_id = m_id;
	}
	public int getT_score() {
		return t_score;
	}
	public void setT_score(int t_score) {
		this.t_score = t_score;
	}
	public String getT_grade() {
		return t_grade;
	}
	public void setT_grade(String t_grade) {
		this.t_grade = t_grade;
	}
	
	

}

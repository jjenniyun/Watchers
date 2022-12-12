package kr.cctv.entity;

import java.sql.Date;

public class Board {

	private int bo_no;
	private int bo_type;
	private String bo_title;
	private String bo_content;
	private Date bo_date;
	private int emp_no;

	public int getBo_no() {
		return bo_no;
	}

	public void setBo_no(int bo_no) {
		this.bo_no = bo_no;
	}

	public int getBo_type() {
		return bo_type;
	}

	public void setBo_type(int bo_type) {
		this.bo_type = bo_type;
	}

	public int getEmp_no() {
		return emp_no;
	}

	public void setEmp_no(int emp_no) {
		this.emp_no = emp_no;
	}

	public String getBo_title() {
		return bo_title;
	}

	public void setBo_title(String bo_title) {
		this.bo_title = bo_title;
	}

	public String getBo_content() {
		return bo_content;
	}

	public void setBo_content(String bo_content) {
		this.bo_content = bo_content;
	}

	public Date getBo_date() {
		return bo_date;
	}

	public void setBo_date(Date bo_date) {
		this.bo_date = bo_date;
	}

}

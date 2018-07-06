package jp.co.axiz.example.VandR.User.entity;

import java.io.Serializable;

public class Reservation implements Serializable{

	private int userId;
	private int vacancyId;
	private String userName;
	private String time;
	private String telephone;
	private int num;


	public int getUserId() {
		return userId;
	}
	public void setUserId(int userId) {
		this.userId = userId;
	}
	public int getVacancyId() {
		return vacancyId;
	}
	public void setVacancyId(int vacancyId) {
		this.vacancyId = vacancyId;


	}
	public String getUserName() {
		return userName;
	}
	public void setUserName(String userName) {
		this.userName = userName;
	}



	public String getTime() {
		return time;
	}
	public void setTime(String time) {
		this.time = time;
	}
	public String getTelephone() {
		return telephone;
	}
	public void setTelephone(String telephone) {
		this.telephone = telephone;
	}
	public int getNum() {
		return num;
	}
	public void setNum(int num) {
		this.num = num;
	}

	public boolean isConditionsEnpty() {
		return userId == 0
				&&vacancyId== 0
				&&(userName ==null||userName.isEmpty())
				&&(time ==null||time.isEmpty())
				&&(telephone ==null||telephone.isEmpty())
				&&num==0;
	}


}

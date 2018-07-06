package jp.co.axiz.example.VandR.User.entity;

import java.io.Serializable;

public class User implements Serializable {

	private Integer userId;
	private String userLastName;
	private String userFirstName;
	private String telephone;
	private String password;

	public Integer getUserId() {
		return userId;
	}
	public void setUserId(Integer userId) {
		this.userId = userId;
	}
	public String getUserLastName() {
		return userLastName;
	}
	public void setUserLastName(String userLastName) {
		this.userLastName = userLastName;
	}
	public String getUserFirstName() {
		return userFirstName;
	}
	public void setUserFirstName(String userFirstName) {
		this.userFirstName = userFirstName;
	}
	public String getTelephone() {
		return telephone;
	}
	public void setTelephone(String telephone) {
		this.telephone = telephone;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}

	public boolean isConditionsEnpty() {
		return userId == null
				&&(userLastName ==null||userLastName.isEmpty())
				&&(userFirstName ==null||userFirstName.isEmpty())
				&&(telephone ==null||telephone.isEmpty())
				&&(password == null||password.isEmpty());
	}

}

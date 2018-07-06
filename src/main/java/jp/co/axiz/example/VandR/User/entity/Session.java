package jp.co.axiz.example.VandR.User.entity;

import org.springframework.context.annotation.Scope;
import org.springframework.context.annotation.ScopedProxyMode;
import org.springframework.stereotype.Component;

@Component
@Scope(value= "session", proxyMode = ScopedProxyMode.TARGET_CLASS)
public class Session {

	private User loginUser;
	private Reservation reservation;

	public User getLoginUser() {
		return loginUser;
	}
	public void setLoginUser(User loginUser) {
		this.loginUser = loginUser;
	}
	public Reservation getReservation() {
		return reservation;
	}
	public void setReservation(Reservation reservation) {
		this.reservation = reservation;
	}

	public void invalidate() {
		loginUser = null;
		reservation = null;

	}
}

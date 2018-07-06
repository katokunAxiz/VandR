package jp.co.axiz.example.VandR.User.form;
import javax.validation.constraints.NotBlank;

/*
 * 予約画面用フォーム
 */
public class ReservationForm {

	@NotBlank
	private String time;

	@NotBlank
	private int num;


	public String getTime() {
		return time;
	}

	public void setTime(String time) {
		this.time = time;
	}

	public int getNum() {
		return num;
	}

	public void setNum(int num) {
		this.num = num;
	}


	/**
	 * @return
	 */
	public boolean isEmpty() {
		return
				 (time == null || time.isEmpty())

				&& num == 0;
	}
}

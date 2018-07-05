package jp.co.axiz.example.VandR.User.controller;

import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@SpringBootApplication
@Controller
public class HelloController {

	@RequestMapping(value = "/index", method = RequestMethod.GET)
	public String index(Model model) {
		return "index";
	}

	@RequestMapping(value = "/userMypage_saito", method = RequestMethod.GET)
	public String mypage(Model model) {
		return "userMypage_saito";
	}

	@RequestMapping(value = "/userComingHistory_saito", method = RequestMethod.POST)
	public String history(Model model) {
		return "userComingHistory_saito";
	}

	@RequestMapping(value = "/userComingHistory_saito", method = RequestMethod.GET)
	public String historyDelete(Model model) {
		// 指定された履歴を削除する処理
		return "userComingHistory_saito";
	}

	@RequestMapping(value = "/userUpdateInput_saito", method = RequestMethod.POST)
	public String userUpdate(Model model) {
		return "userUpdateInput_saito";
	}

	@RequestMapping(value = "/userReservation_saito")
	public String reserve(Model model) {
		return "userReservation_saito";
	}

	@RequestMapping(value = "/userReservationConfirm_saito")
	public String reserveConfirm(Model model) {
		return "userReservationConfirm_saito";
	}

	@RequestMapping(value = "/userReservationResult_saito")
	public String reserveResult(Model model) {
		return "userReservationResult_saito";
	}

	@RequestMapping(value = "/userReservationDeleteConfirm_saito")
	public String reserveDeleteConfirm(Model model) {
		return "userReservationDeleteConfirm_saito";
	}

	@RequestMapping(value = "/userReservationDeleteResult_saito")
	public String reserveDeleteResult(Model model) {
		return "userReservationDeleteResult_saito";
	}

	@RequestMapping(value = "/userReservationLook_saito")
	public String look(Model model) {
		return "userReservationLook_saito";
	}

	@RequestMapping(value = "/userReservationSelect_saito")
	public String select(Model model) {
		return "userReservationSelect_saito";
	}

	@RequestMapping(value = "/userUnsubscribe_saito")
	public String unsubscribe(Model model) {
		return "userUnsubscribe_saito";
	}

	@RequestMapping(value = "/userUnsubscribeResult_saito")
	public String usResult(Model model) {
		return "userUnsubscribeResult_saito";
	}
}

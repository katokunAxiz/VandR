package jp.co.axiz.example.VandR.User.controller;



import java.util.Locale;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.MessageSource;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import jp.co.axiz.example.VandR.User.entity.Reservation;
import jp.co.axiz.example.VandR.User.entity.Session;
import jp.co.axiz.example.VandR.User.entity.User;
import jp.co.axiz.example.VandR.User.form.ReservationForm;
import jp.co.axiz.example.VandR.User.service.IUserService;



@SpringBootApplication
@Controller
public class UserInsertController {

	@Autowired
	private Session session;

	@Autowired
    MessageSource messageSource;

	@Autowired
	private IUserService IUserService;

/*	@Autowired
	private User user;*/



	@RequestMapping(value="/userReservation", method = RequestMethod.POST)
	public String insert(Model model) {
		return "userReservation";
	}





	@RequestMapping(value = "/userReservationConfirm", method = RequestMethod.POST)
	public String insertConfirm(@Validated @ModelAttribute("insertReserve") ReservationForm form, BindingResult bindingResult,
			Model model) {

		if (bindingResult.hasErrors()) {
			String errorMsg = messageSource.getMessage("required.error", null, Locale.getDefault());
			model.addAttribute("errmsg", errorMsg);
			return "userReservation";
		}

		Reservation res = new Reservation();

		User reserveUser = session.getLoginUser();
		int id = reserveUser.getUserId();
		String lastName= reserveUser.getUserLastName();
		String firstName = reserveUser.getUserFirstName();
		String fullName = lastName+firstName;
		String telephone = reserveUser.getTelephone();
		res.setUserId(id);
		res.setVacancyId(1/*form.getVacancyId()*/);
		res.setUserName(fullName);
		res.setTelephone(telephone);
		res.setTime(form.getTime());
		res.setNum(form.getNum());

		session.setReservation(res);

		IUserService.reserveInsert(res);

		return "userReservationConfirm";
	}

}

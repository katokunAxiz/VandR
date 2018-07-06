package jp.co.axiz.example.VandR.User.controller;



import java.util.Locale;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.MessageSource;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import jp.co.axiz.example.VandR.User.entity.Session;
import jp.co.axiz.example.VandR.User.entity.User;
import jp.co.axiz.example.VandR.User.form.UserLoginForm;
import jp.co.axiz.example.VandR.User.service.impl.UserService;

public class UserIndexController {


	@Autowired
    MessageSource messageSource;

	@Autowired
	private Session session;

	@Autowired
	private UserService us;


	@RequestMapping("/login")
	public String login(@ModelAttribute("loginForm") UserLoginForm form, Model model) {
		return "login";
	}

	@RequestMapping(value = "/login", method = RequestMethod.POST)
	public String userLogin(@Validated @ModelAttribute("loginForm") UserLoginForm form, BindingResult bdResult,
			Model model) {

		String errorMsg = messageSource.getMessage("login.error", null, Locale.getDefault());

		if (bdResult.hasErrors()) {
			model.addAttribute("errmsg", errorMsg);
			return "login";
		}

		User user = us.authentication(form.getUserId(), form.getPassword());

		if (user == null) {
			model.addAttribute("errmsg", errorMsg);
			return "login";
		} else {
			session.setLoginUser(user);
			model.addAttribute("user", session.getLoginUser());
			return "userMypage_saito";
		}
	}

	@RequestMapping(value = "/userLogout_saito", method = RequestMethod.GET)
	public String logout(Model model) {
		session.invalidate();
		return "userLogout_saito";
	}



}

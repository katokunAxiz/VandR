package jp.co.axiz.example.VandR.User.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class IndexController {
/*
	@Autowired
	private SessionInfo sessionInfo;
*/
	@RequestMapping("/login")
	public String login(Model model) {
		return "login";
	}
/*
	@RequestMapping("/menu")
	public String menu(Model model) {
		model.addAttribute("user", sessionInfo.getLoginUser());
		return "menu";
	}
*/
	@RequestMapping("/Tanae-ShopProfile")
	public String Tanae_ShopProfile(Model model) {
		/*model.addAttribute("user", sessionInfo.getLoginUser());*/
		return "Tanae-ShopProfile";
	}

	@RequestMapping("/Tanae-Shop")
	public String Tanae_Shop(Model model) {
		/*model.addAttribute("user", sessionInfo.getLoginUser());*/
		return "Tanae-Shop";
	}

	@RequestMapping("/Tanae-TOP")
	public String Tanae_TOP(Model model) {
		/*model.addAttribute("user", sessionInfo.getLoginUser());*/
		return "Tanae-TOP";
	}

	@RequestMapping("/Tanae-UserInsert")
	public String Tanae_UserInsert(Model model) {
		/*model.addAttribute("user", sessionInfo.getLoginUser());*/
		return "Tanae-UserInsert";
	}

	@RequestMapping("/Tanae-UserInsertConfirm")
	public String Tanae_UserInsertConfirm(Model model) {
		/*model.addAttribute("user", sessionInfo.getLoginUser());*/
		return "Tanae-UserInsertConfirm";
	}

	@RequestMapping("/Tanae-UserInsertResult")
	public String Tanae_UserInsertResult(Model model) {
		/*model.addAttribute("user", sessionInfo.getLoginUser());*/
		return "Tanae-UserInsertResult";
	}

	@RequestMapping("/Tanae-Update")
	public String Tanae_Update(Model model) {
		/*model.addAttribute("user", sessionInfo.getLoginUser());*/
		return "Tanae-Update";
	}

	@RequestMapping("/Tanae-UpdateConfirm")
	public String Tanae_UpdateConfirm(Model model) {
		/*model.addAttribute("user", sessionInfo.getLoginUser());*/
		return "Tanae-UpdateConfirm";
	}

	@RequestMapping("/Tanae-UpdateResult")
	public String Tanae_UpdateResult(Model model) {
		/*model.addAttribute("user", sessionInfo.getLoginUser());*/
		return "Tanae-UpdateResult";
	}



}

package com.rafi.app.controllers;

import java.util.List;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.rafi.app.dao.Notice;
import com.rafi.app.service.NoticesService;

@Controller
public class NoticesController {

	private NoticesService noticesService;

	@Autowired
	public void setNoticesService(NoticesService noticesService) {
		this.noticesService = noticesService;
	}

	@RequestMapping("/test")
	public String showTest(Model model, @RequestParam("id") String id) {

		System.out.println("Id is " + id);

		return "home";
	}

	@RequestMapping("/notices")
	public String showNotices(Model model/* HttpSession session */) {
		// System.out.println("From Notices Controller");

		// session.setAttribute("name", "Baidu");

		// model.addAttribute("name" , "<b>Abdullah</b>");

		List<Notice> notices = noticesService.getCurrent();

		model.addAttribute("notices", notices);
		return "notices";
	}

	@RequestMapping("/createnotice")
	public String createNotice(Model model) {

		model.addAttribute(new Notice());

		return "createnotice";
	}

	@RequestMapping(value = "/docreate", method = RequestMethod.POST)
	public String doCreate(Model model, @Valid Notice notice, BindingResult result) {
		// System.out.println(notice);

		if (result.hasErrors()) {
			return "createnotice";
		}
		
		noticesService.create(notice);

		return "noticecreated";
	}
	
//	@ExceptionHandler(DataAccessException.class)
//	public String  handleDatabaseException(DataAccessException ex){
//		return "error";
//	}

}

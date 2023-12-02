package com.skilldistillery.houses.controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.skilldistillery.houses.data.HouseDAO;

@Controller
public class HouseController {

	@Autowired
	private HouseDAO houseDao;

	@RequestMapping(path = { "/", "home.do" })
	public String index(Model model) {
		model.addAttribute("houseList", houseDao.findAll());
		return "home";
	}

}

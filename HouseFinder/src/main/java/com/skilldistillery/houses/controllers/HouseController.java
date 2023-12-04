package com.skilldistillery.houses.controllers;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.skilldistillery.houses.data.HouseDAO;
import com.skilldistillery.houses.entities.House;

@Controller
public class HouseController {

	@Autowired
	private HouseDAO houseDao;

	@RequestMapping(path = { "/", "home.do" })
	public String index(Model model) {
		model.addAttribute("houseList", houseDao.findAll());
		return "home";
	}

	@RequestMapping(path = "getHouse.do")
	public String showHouse(@RequestParam("id") Integer houseId, Model model) {
		House house = houseDao.findById(houseId);
		if (house == null) {
			return "redirect:/home.do";
		}
		model.addAttribute("house", house);
		return "house/house";
	}

	@RequestMapping(path = "searchHouses.do")
	public String searchHouses(@RequestParam String query, Model model) {
		List<House> searchResults = houseDao.searchHouses(query);
		model.addAttribute("houseList", searchResults);
		return "house/house";
	}

	@RequestMapping(path = "deleteHouse.do")
	public String deleteHouse(@RequestParam("id") Integer houseId) {
		houseDao.deleteById(houseId);
		return "redirect:/home.do";
	}

	@RequestMapping(path = "updateHouse.do")
	public String updateHouse(@ModelAttribute House updatedHouse, RedirectAttributes redirectAttributes) {
		House house = houseDao.update(updatedHouse.getId(), updatedHouse);
		if (house != null) {
			redirectAttributes.addFlashAttribute("successMessage", "House updated successfully.");
			return "redirect:getHouse.do?id=" + house.getId(); // Redirect to the updated house's details page
		} else {
			redirectAttributes.addFlashAttribute("errorMessage", "House update failed.");
			return "redirect:/home";
		}
	}

	@RequestMapping(path = "createHouse.do", method = RequestMethod.POST)
	public String createHouse(@ModelAttribute House newHouse) {
		houseDao.create(newHouse);
		return "redirect:/home"; // Redirect to home
	}

}

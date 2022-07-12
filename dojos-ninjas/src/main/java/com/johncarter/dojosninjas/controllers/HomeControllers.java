package com.johncarter.dojosninjas.controllers;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;

import com.johncarter.dojosninjas.models.Dojo;
import com.johncarter.dojosninjas.models.Ninja;
import com.johncarter.dojosninjas.services.DojoService;
import com.johncarter.dojosninjas.services.NinjaService;

@Controller
public class HomeControllers {
	
	/*
	 * Service Instances
	 */
	@Autowired
	private NinjaService ninjas;
	@Autowired
	private DojoService dojos;
	
	/*
	 * GET Routes for Application
	 */
	@GetMapping("/")
	public String newDojos(@ModelAttribute("dojo") Dojo d) {
		return "newDojo.jsp";
	}
	
	@GetMapping("/ninjas/new")
	public String newNinjas(@ModelAttribute("ninja") Ninja n, Model m) {
		m.addAttribute("dojos", dojos.all());
		return "newNinja.jsp";
	}
	
	@GetMapping("/dojos/{id}")
	public String findDojo(@PathVariable("id") Long id, Model m) {
		Dojo d = dojos.find(id);
		m.addAttribute("dojo", d);
		return "showDojo.jsp";
	}
	
	/*
	 * POST Routes for Application
	 */
	
	@PostMapping("/dojos/create")
	public String createDojo(@Valid @ModelAttribute("dojo") Dojo d, BindingResult r) {
		if(r.hasErrors()) {
			return "newDojo.jsp";
		} 
		
		Dojo nDojo = dojos.create(d);
		return String.format("redirect:/dojos/%s", nDojo.getId());
	}
	
	@PostMapping("/ninjas/create")
	public String createNinja(@Valid @ModelAttribute("ninja") Ninja n, BindingResult r) {
		if(r.hasErrors()) {
			return "newNinja.jsp";
		}
		n = ninjas.create(n);
		return String.format("redirect:/dojos/" + n.getDojo().getId());
	}
	
}

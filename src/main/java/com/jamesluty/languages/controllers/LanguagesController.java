package com.jamesluty.languages.controllers;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;

import com.jamesluty.languages.models.Languages;
import com.jamesluty.languages.services.LanguagesService;

@Controller
public class LanguagesController {
	
	@Autowired
	private LanguagesService languagesService;

//	Redirect to home page
	@GetMapping("/")
	public String index() {
		return "redirect:/languages";
	}
	
//	Display Routes
	@GetMapping("/languages")
	public String home(@ModelAttribute("language") Languages languages, Model model) {
		model.addAttribute("languages", languagesService.getAll());
		return "index.jsp";
	}
	
	@GetMapping("/languages/{id}")
	public String show(@PathVariable("id") Long id, Model model) {
		Languages language = languagesService.getOne(id);
		model.addAttribute("language", language);
		return "show.jsp";
	}
		
	@GetMapping("/languages/{id}/edit")
	public String edit(@PathVariable("id") Long id, Model model) {
		Languages language = languagesService.getOne(id);
		model.addAttribute("language", language);
		return "edit.jsp";
	}
	
//	POST routes
	@PostMapping("/languages/create")
	public String create(@Valid @ModelAttribute("language") Languages languages, BindingResult result) {
		if(result.hasErrors()) {
			return "index.jsp";
		} else {
			languagesService.save(languages);
			return "redirect:/languages";
		}
	}
	
	@PutMapping("/languages/edit")
	public String edit(@Valid @ModelAttribute("language") Languages languages, BindingResult result) {
		if(result.hasErrors()) {
			return "edit.jsp";
		} else {
			languagesService.save(languages);
			return "redirect:/languages";
		}
	}
	
	@DeleteMapping("/languages/delete/{id}")
	public String delete(@PathVariable("id") Long id) {
		languagesService.delete(id);
		return "redirect:/languages";
	}
}

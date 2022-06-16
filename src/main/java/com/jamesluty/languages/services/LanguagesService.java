package com.jamesluty.languages.services;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.jamesluty.languages.models.Languages;
import com.jamesluty.languages.repos.LanguagesRepo;

@Service
public class LanguagesService {

	@Autowired
	private LanguagesRepo languagesRepo;
	
	public Languages save(Languages languages) {
		return languagesRepo.save(languages);
	}
	
	public List<Languages> getAll(){
		return languagesRepo.findAll();
	}
	
	public Languages getOne(Long id) {
		Optional<Languages> optLanguage = languagesRepo.findById(id);
		if (optLanguage.isPresent()) {
			return optLanguage.get();
		} else {
			return null;
		}
	}
	
	public void delete(Long id) {
		languagesRepo.deleteById(id);
	}
}

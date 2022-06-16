package com.jamesluty.languages.repos;

import java.util.List;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.jamesluty.languages.models.Languages;

@Repository
public interface LanguagesRepo extends CrudRepository<Languages, Long> {

	// this method retrieves all the books from the database
	List<Languages> findAll();
}

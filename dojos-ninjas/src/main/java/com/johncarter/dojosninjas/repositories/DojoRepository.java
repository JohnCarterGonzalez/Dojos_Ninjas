package com.johncarter.dojosninjas.repositories;

import java.util.List;

import org.springframework.data.repository.CrudRepository;

import com.johncarter.dojosninjas.models.Dojo;

public interface DojoRepository extends CrudRepository<Dojo, Long> {
	
	// Finds all the Dojos
	List<Dojo> findAll();
	
}

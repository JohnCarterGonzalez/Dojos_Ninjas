package com.johncarter.dojosninjas.repositories;

import java.util.List;

import org.springframework.data.repository.CrudRepository;

import com.johncarter.dojosninjas.models.Dojo;
import com.johncarter.dojosninjas.models.Ninja;

public interface NinjaRepository extends CrudRepository<Ninja, Long> {
	
	List<Ninja> findAll();
	List<Ninja> findByDojo(Dojo dojo);
}

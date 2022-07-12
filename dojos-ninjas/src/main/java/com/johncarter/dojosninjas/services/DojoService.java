package com.johncarter.dojosninjas.services;

import java.util.List;
import java.util.Optional;

import org.springframework.stereotype.Service;

import com.johncarter.dojosninjas.models.Dojo;
import com.johncarter.dojosninjas.repositories.DojoRepository;

@Service
public class DojoService {
	
	private final DojoRepository drepo;
	
	public DojoService(DojoRepository drepo) {
		this.drepo = drepo;
	}
	
	public List<Dojo> all() {
		return drepo.findAll();
	}
	
	public Dojo create(Dojo dojo) {
		return drepo.save(dojo);
	}
	
	public Dojo find(Long id) {
		Optional<Dojo> result = drepo.findById(id);
		if(result.isPresent()) {
			return result.get();
		} else {
			return null;
		}
	}
}

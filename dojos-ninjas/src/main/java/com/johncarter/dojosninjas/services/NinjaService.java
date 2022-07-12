package com.johncarter.dojosninjas.services;

import java.util.List;
import java.util.Optional;

import org.springframework.stereotype.Service;

import com.johncarter.dojosninjas.models.Dojo;
import com.johncarter.dojosninjas.models.Ninja;
import com.johncarter.dojosninjas.repositories.NinjaRepository;

@Service
public class NinjaService {
	
	private final NinjaRepository nrepo;
	
	public NinjaService(NinjaRepository nrepo) {
		this.nrepo = nrepo;
	}
	
	public List<Ninja> all() {
		return nrepo.findAll();
	}
	
	public Ninja create(Ninja ninja) {
		return nrepo.save(ninja);
	}
	
	public Ninja find(Long id) {
		Optional<Ninja> result = nrepo.findById(id);
		if (result.isPresent()) {
			return result.get();
		} else {
			return null;
		}
	}
	
	public List<Ninja> byDojo(Dojo dojo) {
		return nrepo.findByDojo(dojo);
	}
}

package com.chris.main.services;

import java.util.List;
import java.util.Optional;

import org.springframework.stereotype.Service;

import com.chris.main.models.Dojo;
import com.chris.main.repositories.DojoRepo;

@Service
public class DojoService {
	
	private final DojoRepo dojoRepo;
	
	public DojoService(DojoRepo dojoRepo) {
		this.dojoRepo = dojoRepo;
	}
	
	public List<Dojo> allDojos() {
		return dojoRepo.findAll();
	}
	
	public Dojo createDojo(Dojo dojo) {
		return dojoRepo.save(dojo);
	}
	
	public Dojo updateDojo(Dojo dojo) {
		return dojoRepo.save(dojo);
	}
	
	public Dojo findDojo(Long id) {
		Optional<Dojo> optionalDojo = dojoRepo.findById(id);
		if (optionalDojo.isPresent()) {
			return optionalDojo.get();
		} else {
			return null;
		}
	}
	
	public void deleteDojo(Dojo dojo) {
		dojoRepo.deleteById(dojo.getId());
	}
}


package com.chris.main.services;

import java.util.List;
import java.util.Optional;

import org.springframework.stereotype.Service;

import com.chris.main.models.Ninja;
import com.chris.main.repositories.NinjaRepo;

@Service
public class NinjaService {
	
	private final NinjaRepo ninjaRepo;
	
	public NinjaService(NinjaRepo ninjaRepo) {
		this.ninjaRepo = ninjaRepo;
	}
	
	public List<Ninja> allNinjas() {
		return ninjaRepo.findAll();
	}
	
	public Ninja createNinja(Ninja ninja) {
		return ninjaRepo.save(ninja);
	}
	
	public Ninja updatePerson(Ninja ninja) {
		return ninjaRepo.save(ninja);
	}
	
	public Ninja findNinja(Long id) {
		Optional<Ninja> optionalNinja = ninjaRepo.findById(id);
		if (optionalNinja.isPresent()) {
			return optionalNinja.get();
		} else {
			return null;
		}
	}
	
	public void deleteNinja(Ninja ninja) {
		ninjaRepo.deleteById(ninja.getId());
	}
}

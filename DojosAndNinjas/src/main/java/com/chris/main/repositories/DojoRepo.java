package com.chris.main.repositories;

import java.util.List;

import org.springframework.data.repository.CrudRepository;

import com.chris.main.models.Dojo;

public interface DojoRepo extends CrudRepository<Dojo, Long> {

	List<Dojo> findAll();
}

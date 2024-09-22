package com.notthebest.demo.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.notthebest.demo.model.Person;

@Repository
public interface PersonRepo extends JpaRepository<Person, Integer> {

}

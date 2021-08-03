package com.springmvc.training.dao;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;

import com.springmvc.training.entities.Patient;

public interface PatientRepository extends JpaRepository<Patient,Long> {
	public Page<Patient> findByNameContains(String keyword,Pageable pageable);

}

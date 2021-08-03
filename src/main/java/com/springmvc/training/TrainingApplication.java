package com.springmvc.training;

import java.util.Date;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.CommandLineRunner;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;

import com.springmvc.training.dao.PatientRepository;
import com.springmvc.training.entities.Patient;

@SpringBootApplication
public class TrainingApplication implements CommandLineRunner {
	
	@Autowired
	private PatientRepository patientRepository;

	public static void main(String[] args) {
		SpringApplication.run(TrainingApplication.class, args);
		
	}

	@Override
	public void run(String... args) throws Exception {
		// TODO Auto-generated method stub
		patientRepository.save(new Patient(null,"ayoub",new Date(),false));
		patientRepository.save(new Patient(null, "samira",new Date(),false));
		patientRepository.save(new Patient(null, "samir",new Date(),false));
		patientRepository.save(new Patient(null, "thami",new Date(),false));
		patientRepository.findAll().forEach(
				p->{
					System.out.println(p.getName());
				}
				
				);
		
	}

}

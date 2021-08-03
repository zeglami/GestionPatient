package com.springmvc.training.web;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.springmvc.training.dao.PatientRepository;
import com.springmvc.training.entities.Patient;

@Controller
public class PatientController {
	
	@Autowired
	private PatientRepository patientRepository;
	@GetMapping(path="/index")
	public String index() {
		return "index";
	}
	
	@GetMapping(path="/patients")
	public String list(Model model,
			@RequestParam(name="page",defaultValue = "0")  int page,
			@RequestParam(name="size",defaultValue = "5")  int size,
			@RequestParam(name="keyword",defaultValue = "")  String mc
			
					
					) {
		Page<Patient> pagePatients=patientRepository.findByNameContains(mc, PageRequest.of(page, size));
		//model.addAllAttributes("patients",patients);
		model.addAttribute("patients", pagePatients.getContent());
		model.addAttribute("pages",new int[pagePatients.getTotalPages()]);
		model.addAttribute("currentPage", page);
		model.addAttribute("size", size);
		model.addAttribute("keyword", mc);
		return "patients";
	}
	
	
	@GetMapping(path="/deletePatient")
	public String delete(Long id,String keyword,int page,int size) {
		patientRepository.deleteById(id);
		return "redirect:patients?page="+page+"&size="+size+"&keyword="+keyword;
	}
	
	@GetMapping(path="/deletePatient2")//getMapping =GET+reqMapping
	public String delete2(Model model,Long id,String keyword,int page,int size) {
		patientRepository.deleteById(id);
		return list(model, page, size, keyword);
	}
	
	
	@GetMapping(path="/formPatient")
	public String formPatient() {
		//model.addAttribute("patients",new Patient());
		return "formPatient";
	}
	
	
	@PostMapping(path="/savePatient")
	public String savePatient() {
		//patientRepository.save(patient);
		return "formPatient";
	}
	
	
	

}

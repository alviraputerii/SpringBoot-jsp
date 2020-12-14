package com.vr.demo;

import java.util.List;
import java.util.ArrayList;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class FormController {
	@Autowired
	CustomerRepo repo;
	
//	@GetMapping("/")
//	public String home() {
//		return "edureka";
//	}
	
	@RequestMapping("/")
	public String addcustomer() {
		return "addCustomer";
	}
//	
//	@PostMapping("/savecustomer")
//	public String details(Customers customers) {
//		repo.save(customers);
//		return "addCustomer";
//	}
	
//	@PutMapping(path="/details", consumes = {"application/json"})
//	public Customers updatecustomer(@RequestBody Customers customers) {
//		repo.save(customers);
//		return customers;
//	}
//	
//	@RequestMapping("/getdetail")
//	public String getdetails() {
//		return "ViewCustomers";
//	}
//
	@GetMapping("/getdetail")
	public ModelAndView getdetails(@RequestParam int cid) {
	ModelAndView mv = new ModelAndView("Retrieve");
	Customers customers = repo.findById(cid).orElse(null);
	mv.addObject("cid",customers.getCid());
	mv.addObject("cname",customers.getCname());
	mv.addObject("cemail",customers.getCemail());
	return mv;
	}
//	
//	@GetMapping("/getalldetails")
//	public ModelAndView showAll() {
//		ModelAndView mv = new ModelAndView("ViewAllCustomers");
//		List<Customers> customers = repo.findAll();
//		mv.addObject("customers", customers);
//		return mv;
//	}
//	
//	@RequestMapping("/deletecustomer")
//	public String deletecustomer() {
//		return "deletecustomer";
//	}
//	
//	@RequestMapping("/deletecustomer/{cid}")
//	public String deletecustomer(@PathVariable("cid") int cid) {
//		Customers cust = repo.getOne(cid);
//		repo.delete(cust);
//		return "deletecustomer";
//	}
	
}

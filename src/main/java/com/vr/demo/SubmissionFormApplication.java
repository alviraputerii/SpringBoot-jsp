package com.vr.demo;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.CommandLineRunner;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;

@SpringBootApplication
public class SubmissionFormApplication implements CommandLineRunner{
	
	@Autowired
	private CustomerRepo custRepository;
	
	public static void main(String[] args) {
		SpringApplication.run(SubmissionFormApplication.class, args);
	}

	@Override
	public void run(String... args) throws Exception {
		custRepository.save(new Customers("ve", "ve@gmail.com"));
		custRepository.save(new Customers("no", "no@gmail.com"));
		
	}

}

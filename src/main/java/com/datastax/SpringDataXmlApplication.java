package com.datastax;

import javax.annotation.PostConstruct;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.annotation.ImportResource;

import com.datastax.oss.driver.api.core.CqlSession;

@SpringBootApplication
@ImportResource("classpath:app-config.xml")
public class SpringDataXmlApplication {

	public static void main(String[] args) {
		SpringApplication.run(SpringDataXmlApplication.class, args);
	}
	
	@Autowired
	CqlSession cqlSession;

	@PostConstruct
	public void doStuff() {
	    String dc = cqlSession
	            .execute("SELECT data_center from system.local")
	            .one().
	            getString("data_center");
	    System.out.println(dc);
	    
	}

}

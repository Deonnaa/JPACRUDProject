package com.skilldistillery.houses;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.autoconfigure.domain.EntityScan;

@SpringBootApplication
//@EntityScan("com.skilldistillery.jpahouses")
public class HouseFinderApplication {

	public static void main(String[] args) {
		SpringApplication.run(HouseFinderApplication.class, args);
	}

}

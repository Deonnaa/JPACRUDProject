package com.skilldistillery.houses.entities;

import static org.junit.jupiter.api.Assertions.assertEquals;
import static org.junit.jupiter.api.Assertions.assertNotNull;

import org.junit.jupiter.api.AfterAll;
import org.junit.jupiter.api.AfterEach;
import org.junit.jupiter.api.BeforeAll;
import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.Test;

import com.skilldistillery.houses.entities.House;

import jakarta.persistence.EntityManager;
import jakarta.persistence.EntityManagerFactory;
import jakarta.persistence.Persistence;

class HouseTest {
	private static EntityManagerFactory emf;
	private static EntityManager em;
	private House house;

	@BeforeAll
	static void setUpBeforeClass() throws Exception {
		emf = Persistence.createEntityManagerFactory("JPAHouses");
	}

	@AfterAll
	static void tearDownAfterClass() throws Exception {
		emf.close();
	}

	@BeforeEach
	void setUp() throws Exception {
		em = emf.createEntityManager();
		house = em.find(House.class, 1);
	}

	@AfterEach
	void tearDown() throws Exception {
		em.close();
		house = null;
	}

//	@Test
//	void test() {
//		fail("Not yet implemented");
//	}

	@Test
	void test_Customer_basic_mappings() {
		assertNotNull(house);
		assertEquals("CA", house.getState());

	}

}

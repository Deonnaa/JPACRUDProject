package com.skilldistillery.houses.data;

import java.util.List;

import org.springframework.stereotype.Service;

import com.skilldistillery.houses.entities.House;

import jakarta.persistence.EntityManager;
import jakarta.persistence.PersistenceContext;
import jakarta.persistence.TypedQuery;
import jakarta.transaction.Transactional;

@Service
@Transactional
public class HouseDaoImpl implements HouseDAO {

	@PersistenceContext
	private EntityManager em;

	@Override
	public House findById(int id) {
		return em.find(House.class, id);
	}

	@Override
	public List<House> findAll() {
		String jpql = "SELECT house FROM House house";
		return em.createQuery(jpql, House.class).getResultList();
	}

	@Override
	public House create(House house) {
		em.persist(house);
		em.flush();
		return house;
	}

	@Override
	public House update(int id, House updatedHouse) {
		House house = em.find(House.class, id);
		if (house != null) {
			house.setAddress(updatedHouse.getAddress());
			house.setCity(updatedHouse.getCity());
			house.setState(updatedHouse.getState());
			house.setZipCode(updatedHouse.getZipCode());
			house.setPrice(updatedHouse.getPrice());
			house.setSquareFootage(updatedHouse.getSquareFootage());
			house.setBedrooms(updatedHouse.getBedrooms());
			house.setBathrooms(updatedHouse.getBathrooms());
			house.setDateListed(updatedHouse.getDateListed());
			house.setDescription(updatedHouse.getDescription());
			house.setImageUrl(updatedHouse.getImageUrl());
		}
		return house;
	}

	@Override
	public boolean deleteById(int id) {
		House house = em.find(House.class, id);
		if (house != null) {
			em.remove(house);
			return true;
		}
		return false;
	}

	@Override
	public List<House> searchHouses(String query) {
		String jpql = "SELECT h FROM House h WHERE LOWER(h.address) LIKE LOWER(:query) OR LOWER(h.city) LIKE LOWER(:query) OR LOWER(h.state) LIKE LOWER(:query) OR h.zipCode LIKE :query";
		TypedQuery<House> typedQuery = em.createQuery(jpql, House.class);
		typedQuery.setParameter("query", "%" + query + "%");
		return typedQuery.getResultList();
	}

}

package com.skilldistillery.houses.data;

import java.util.List;

import org.springframework.stereotype.Service;

import com.skilldistillery.houses.entities.house.House;

import jakarta.persistence.EntityManager;
import jakarta.persistence.PersistenceContext;
import jakarta.transaction.Transactional;

@Service
@Transactional
public class HouseDaoImpl implements HouseDAO {

	@PersistenceContext
	private EntityManager em;

	@Override
	public House findById(int id) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<House> findAll() {
		String jpql = "SELECT house FROM House house";
		return em.createQuery(jpql, House.class).getResultList();
	}

	@Override
	public House create(House house) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public House update(int id, House house) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public boolean deleteById(int id) {
		// TODO Auto-generated method stub
		return false;
	}

}

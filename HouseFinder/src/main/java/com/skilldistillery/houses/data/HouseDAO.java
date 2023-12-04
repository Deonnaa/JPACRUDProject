package com.skilldistillery.houses.data;

import java.util.List;

import com.skilldistillery.houses.entities.House;

public interface HouseDAO {
	
	House findById(int id);
	List<House> findAll();
	House create(House house);
	House update(int id, House house);
	boolean deleteById(int id);
	List<House> searchHouses(String query);
	
}

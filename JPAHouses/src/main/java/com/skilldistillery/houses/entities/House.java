package com.skilldistillery.houses.entities;

import java.math.BigDecimal;
import java.sql.Date;
import java.util.Objects;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;

@Entity
public class House {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Integer id;

	private String address;

	private String city;

	private String state;

	@Column(name = "zip_code")
	private String zipCode;

	private BigDecimal price;

	@Column(name = "square_footage")
	private Integer squareFootage;

	private Integer bedrooms;

	private Integer bathrooms;

	@Column(name = "date_listed")
	private Date dateListed;

	private String description;

	@Column(name = "image_url")
	private String imageUrl;

	// Methods
	public House() {}

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public String getCity() {
		return city;
	}

	public void setCity(String city) {
		this.city = city;
	}

	public String getState() {
		return state;
	}

	public void setState(String state) {
		this.state = state;
	}

	public String getZipCode() {
		return zipCode;
	}

	public void setZipCode(String zipCode) {
		this.zipCode = zipCode;
	}

	public BigDecimal getPrice() {
		return price;
	}

	public void setPrice(BigDecimal price) {
		this.price = price;
	}

	public Integer getSquareFootage() {
		return squareFootage;
	}

	public void setSquareFootage(Integer squareFootage) {
		this.squareFootage = squareFootage;
	}

	public Integer getBedrooms() {
		return bedrooms;
	}

	public void setBedrooms(Integer bedrooms) {
		this.bedrooms = bedrooms;
	}

	public Integer getBathrooms() {
		return bathrooms;
	}

	public void setBathrooms(Integer bathrooms) {
		this.bathrooms = bathrooms;
	}

	public Date getDateListed() {
		return dateListed;
	}

	public void setDateListed(Date dateListed) {
		this.dateListed = dateListed;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	public String getImageUrl() {
		return imageUrl;
	}

	public void setImageUrl(String imageUrl) {
		this.imageUrl = imageUrl;
	}

	@Override
	public String toString() {
		return "House [id=" + id + ", address=" + address + ", city=" + city + ", state=" + state + ", zipCode="
				+ zipCode + ", price=" + price + ", squareFootage=" + squareFootage + ", bedrooms=" + bedrooms
				+ ", bathrooms=" + bathrooms + ", dateListed=" + dateListed + ", description=" + description
				+ ", imageUrl=" + imageUrl + ", getId()=" + getId() + ", getAddress()=" + getAddress() + ", getCity()="
				+ getCity() + ", getState()=" + getState() + ", getZipCode()=" + getZipCode() + ", getPrice()="
				+ getPrice() + ", getSquareFootage()=" + getSquareFootage() + ", getBedrooms()=" + getBedrooms()
				+ ", getBathrooms()=" + getBathrooms() + ", getDateListed()=" + getDateListed() + ", getDescription()="
				+ getDescription() + ", getImageUrl()=" + getImageUrl() + ", getClass()=" + getClass() + ", hashCode()="
				+ hashCode() + ", toString()=" + super.toString() + "]";
	}

	@Override
	public int hashCode() {
		return Objects.hash(id);
	}

	@Override
	public boolean equals(Object obj) {
		if (this == obj)
			return true;
		if (obj == null)
			return false;
		if (getClass() != obj.getClass())
			return false;
		House other = (House) obj;
		return Objects.equals(id, other.id);
	}

}
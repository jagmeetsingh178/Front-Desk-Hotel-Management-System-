package com.jsp.hotem_management_system.dto;

import java.io.Serializable;
import java.util.List;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.OneToMany;
import lombok.Data;
@SuppressWarnings("serial")

@Entity
@Data
public class HotelOwner implements Serializable{

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int id;
	private String name;
	@Column(unique = true)
	private String email;
	private String password;
	private double phone;
	private String verify="no";
	
	@OneToMany
	List<Hotel> hotels;

	
	public HotelOwner() {
		super();
	}

	public HotelOwner(String name, String email, String password, double phone) {
		super();
		this.name = name;
		this.email = email;
		this.password = password;
		this.phone = phone;
	}


	public HotelOwner(int id, String name, String email, String password, double phone, String verify) {
		super();
		this.id = id;
		this.name = name;
		this.email = email;
		this.password = password;
		this.phone = phone;
		this.verify = verify;
	}
	
	
	
}

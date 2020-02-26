package com.springmvc.model;

import org.springframework.stereotype.Service;

@Service
public class DataService {

	public String[] getPeople() {
		String n[] = {"Varshaa","Umaiza","Monica","Dhivya","Uthra"};
		return n;
	}
}

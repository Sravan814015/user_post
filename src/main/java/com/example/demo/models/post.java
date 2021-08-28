package com.example.demo.models;

import java.util.*;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToOne;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;

@Entity
public class post {
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	int id;
	String desc_p, tittle;
	String time_post;
	@OneToOne
	userinfo us;

	public String getTittle() {
		return tittle;
	}

	public void setTittle(String tittle) {
		this.tittle = tittle;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getDesc_p() {
		return desc_p;
	}

	public void setDesc_p(String desc_p) {
		this.desc_p = desc_p;
	}

	public String getTime_post() {
		return time_post;
	}

	public void setTime_post(String time_post) {
		this.time_post = time_post;
	}

	public userinfo getUs() {
		return us;
	}

	public void setUs(userinfo us) {
		this.us = us;
	}

}

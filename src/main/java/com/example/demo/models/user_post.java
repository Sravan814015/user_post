package com.example.demo.models;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToOne;

@Entity
public class user_post {
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	int id;
	String name, comment;
	@OneToOne
	post p;
	@OneToOne
	userinfo us;

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getComment() {
		return comment;
	}

	public void setComment(String comment) {
		this.comment = comment;
	}

	public post getP() {
		return p;
	}

	public void setP(post p) {
		this.p = p;
	}

	public userinfo getUs() {
		return us;
	}

	public void setUs(userinfo us) {
		this.us = us;
	}

}

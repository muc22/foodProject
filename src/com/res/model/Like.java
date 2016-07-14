package com.res.model;

import com.res.model.Res;
import com.res.model.User;

/**
 * Like entity. @author MyEclipse Persistence Tools
 */

public class Like implements java.io.Serializable {

	// Fields

	private Integer id;
	private Res res;
	private User user;

	// Constructors

	/** default constructor */
	public Like() {
	}

	/** full constructor */
	public Like(Integer id, Res res, User user) {
		this.id = id;
		this.res = res;
		this.user = user;
	}

	// Property accessors

	public Integer getId() {
		return this.id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public Res getRes() {
		return this.res;
	}

	public void setRes(Res res) {
		this.res = res;
	}

	public User getUser() {
		return this.user;
	}

	public void setUser(User user) {
		this.user = user;
	}

}
package com.res.model;

import java.util.HashSet;
import java.util.Set;

/**
 * User entity. @author MyEclipse Persistence Tools
 */

public class User implements java.io.Serializable {

	// Fields

	private String username;
	private String password;
	private Set records = new HashSet(0);
	private Set likes = new HashSet(0);
	private Set reses = new HashSet(0);
	private Set reses_1 = new HashSet(0);
	private Set records_1 = new HashSet(0);
	private Set likes_1 = new HashSet(0);

	// Constructors

	/** default constructor */
	public User() {
	}

	/** minimal constructor */
	public User(String username, String password) {
		this.username = username;
		this.password = password;
	}

	/** full constructor */
	public User(String username, String password, Set records, Set likes,
			Set reses, Set reses_1, Set records_1, Set likes_1) {
		this.username = username;
		this.password = password;
		this.records = records;
		this.likes = likes;
		this.reses = reses;
		this.reses_1 = reses_1;
		this.records_1 = records_1;
		this.likes_1 = likes_1;
	}

	// Property accessors

	public String getUsername() {
		return this.username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public String getPassword() {
		return this.password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public Set getRecords() {
		return this.records;
	}

	public void setRecords(Set records) {
		this.records = records;
	}

	public Set getLikes() {
		return this.likes;
	}

	public void setLikes(Set likes) {
		this.likes = likes;
	}

	public Set getReses() {
		return this.reses;
	}

	public void setReses(Set reses) {
		this.reses = reses;
	}

	public Set getReses_1() {
		return this.reses_1;
	}

	public void setReses_1(Set reses_1) {
		this.reses_1 = reses_1;
	}

	public Set getRecords_1() {
		return this.records_1;
	}

	public void setRecords_1(Set records_1) {
		this.records_1 = records_1;
	}

	public Set getLikes_1() {
		return this.likes_1;
	}

	public void setLikes_1(Set likes_1) {
		this.likes_1 = likes_1;
	}

}
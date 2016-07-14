package com.res.model;

import java.util.HashSet;
import java.util.Set;

/**
 * Res entity. @author MyEclipse Persistence Tools
 */

public class Res implements java.io.Serializable {

	// Fields

	private String resname;
	private User user;
	private String keyword;
	private String description;
	private String filepath;
	private Set likes = new HashSet(0);
	private Set likes_1 = new HashSet(0);

	// Constructors

	/** default constructor */
	public Res() {
	}

	/** minimal constructor */
	public Res(String resname, User user, String keyword,
			String description) {
		this.resname = resname;
		this.user = user;
		this.keyword = keyword;
		this.description = description;
	}

	/** full constructor */
	public Res(String resname, User user, String keyword,
			String description, String filepath, Set likes, Set likes_1) {
		this.resname = resname;
		this.user = user;
		this.keyword = keyword;
		this.description = description;
		this.filepath = filepath;
		this.likes = likes;
		this.likes_1 = likes_1;
	}

	// Property accessors

	public String getResname() {
		return this.resname;
	}

	public void setResname(String resname) {
		this.resname = resname;
	}

	public User getUser() {
		return this.user;
	}

	public void setUser(User user) {
		this.user = user;
	}

	public String getKeyword() {
		return this.keyword;
	}

	public void setKeyword(String keyword) {
		this.keyword = keyword;
	}

	public String getDescription() {
		return this.description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	public String getFilepath() {
		return this.filepath;
	}

	public void setFilepath(String filepath) {
		this.filepath = filepath;
	}

	public Set getLikes() {
		return this.likes;
	}

	public void setLikes(Set likes) {
		this.likes = likes;
	}

	public Set getLikes_1() {
		return this.likes_1;
	}

	public void setLikes_1(Set likes_1) {
		this.likes_1 = likes_1;
	}

}
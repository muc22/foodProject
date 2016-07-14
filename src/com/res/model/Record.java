package com.res.model;

/**
 * Record entity. @author MyEclipse Persistence Tools
 */

public class Record implements java.io.Serializable {

	// Fields

	private RecordId id;
	private User user;

	// Constructors

	/** default constructor */
	public Record() {
	}

	/** minimal constructor */
	public Record(RecordId id) {
		this.id = id;
	}

	/** full constructor */
	public Record(RecordId id, User user) {
		this.id = id;
		this.user = user;
	}

	// Property accessors

	public RecordId getId() {
		return this.id;
	}

	public void setId(RecordId id) {
		this.id = id;
	}

	public User getUser() {
		return this.user;
	}

	public void setUser(User user) {
		this.user = user;
	}

}
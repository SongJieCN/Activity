package com.vim.activity.entity;

import java.io.Serializable;
import javax.persistence.*;
import java.sql.Timestamp;


/**
 * The persistent class for the relation database table.
 * 
 */
@Entity
@Table(name="relation")
@NamedQuery(name="Relation.findAll", query="SELECT r FROM Relation r")
public class Relation implements Serializable {
	private static final long serialVersionUID = 1L;
	private long id;
	private Timestamp createdtime;
	private int type;
	private String userid;
	private Activity activity;

	public Relation() {
	}


	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	public long getId() {
		return this.id;
	}

	public void setId(long id) {
		this.id = id;
	}


	public Timestamp getCreatedtime() {
		return this.createdtime;
	}

	public void setCreatedtime(Timestamp createdtime) {
		this.createdtime = createdtime;
	}


	public int getType() {
		return this.type;
	}

	public void setType(int type) {
		this.type = type;
	}


	public String getUserid() {
		return this.userid;
	}

	public void setUserid(String userid) {
		this.userid = userid;
	}


	//bi-directional many-to-one association to Activity
	@ManyToOne
	@JoinColumn(name="actid")
	public Activity getActivity() {
		return this.activity;
	}

	public void setActivity(Activity activity) {
		this.activity = activity;
	}

}
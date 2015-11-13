package com.vim.activity.entity;

import java.io.Serializable;
import javax.persistence.*;

import com.fasterxml.jackson.annotation.JsonIgnore;
import com.fasterxml.jackson.annotation.JsonProperty;

import java.sql.Timestamp;
import java.util.Set;


/**
 * The persistent class for the activity database table.
 * 
 */
@Entity
@Table(name="activity")
@NamedQuery(name="Activity.findAll", query="SELECT a FROM Activity a")
public class Activity implements Serializable {
	private static final long serialVersionUID = 1L;
	@JsonIgnore
	private long id;
	@JsonProperty("comment")
	private String comment;
	@JsonProperty("content")
	private String content;
	@JsonIgnore
	private Timestamp createdtime;
	@JsonIgnore
	private String createduser;
	@JsonIgnore
	private Timestamp enddate;
	@JsonIgnore
	private byte[] imgtopic;
	@JsonProperty("price")
	private float price;
	@JsonIgnore
	private Timestamp startdate;
	@JsonProperty("topic")
	private String topic;
	@JsonProperty("place")
	private String place;
	@JsonIgnore
	private int type;
	@JsonIgnore
	private Timestamp updatedtime;
	@JsonIgnore
	private String updateduser;
	@JsonIgnore
	private Set<Relation> relations;

	public Activity() {
	}


	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	public long getId() {
		return this.id;
	}

	public void setId(long id) {
		this.id = id;
	}


	public String getComment() {
		return this.comment;
	}

	public void setComment(String comment) {
		this.comment = comment;
	}


	public String getContent() {
		return this.content;
	}

	public void setContent(String content) {
		this.content = content;
	}


	public Timestamp getCreatedtime() {
		return this.createdtime;
	}

	public void setCreatedtime(Timestamp createdtime) {
		this.createdtime = createdtime;
	}


	public String getCreateduser() {
		return this.createduser;
	}

	public void setCreateduser(String createduser) {
		this.createduser = createduser;
	}


	public Timestamp getEnddate() {
		return this.enddate;
	}

	public void setEnddate(Timestamp enddate) {
		this.enddate = enddate;
	}


	@Lob
	public byte[] getImgtopic() {
		return this.imgtopic;
	}

	public void setImgtopic(byte[] imgtopic) {
		this.imgtopic = imgtopic;
	}


	public float getPrice() {
		return this.price;
	}

	public void setPrice(float price) {
		this.price = price;
	}


	public Timestamp getStartdate() {
		return this.startdate;
	}

	public void setStartdate(Timestamp startdate) {
		this.startdate = startdate;
	}


	public String getTopic() {
		return this.topic;
	}

	public void setTopic(String topic) {
		this.topic = topic;
	}


	public int getType() {
		return this.type;
	}

	public void setType(int type) {
		this.type = type;
	}


	public Timestamp getUpdatedtime() {
		return this.updatedtime;
	}

	public void setUpdatedtime(Timestamp updatedtime) {
		this.updatedtime = updatedtime;
	}


	public String getUpdateduser() {
		return this.updateduser;
	}

	public void setUpdateduser(String updateduser) {
		this.updateduser = updateduser;
	}


	//bi-directional many-to-one association to Relation
	@OneToMany(mappedBy="activity")
	public Set<Relation> getRelations() {
		return this.relations;
	}

	public void setRelations(Set<Relation> relations) {
		this.relations = relations;
	}

	public Relation addRelation(Relation relation) {
		getRelations().add(relation);
		relation.setActivity(this);

		return relation;
	}

	public Relation removeRelation(Relation relation) {
		getRelations().remove(relation);
		relation.setActivity(null);

		return relation;
	}

}
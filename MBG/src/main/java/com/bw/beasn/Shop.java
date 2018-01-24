package com.bw.beasn;

import java.io.Serializable;

import org.apache.solr.client.solrj.beans.Field;

public class Shop implements Serializable{

	@Field
	private String id;
	@Field
	private String name;
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	
	
}

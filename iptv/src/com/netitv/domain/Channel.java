package com.netitv.domain;

import java.io.Serializable;

public class Channel implements Serializable {

	private static final long serialVersionUID = 4587738824122439885L;

	private int id;
	
	private String name;
	
	private String productId;
	
	private String serviceId;

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

	public String getProductId() {
		return productId;
	}

	public void setProductId(String productId) {
		this.productId = productId;
	}

	public String getServiceId() {
		return serviceId;
	}

	public void setServiceId(String serviceId) {
		this.serviceId = serviceId;
	}
}

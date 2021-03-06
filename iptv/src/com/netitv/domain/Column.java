package com.netitv.domain;

import java.io.Serializable;

/**
 * @Todo:栏目
 * @author: zhuqh
 * @CreateTime:2011-11-14 下午01:50:18
 */
public class Column  implements Serializable{
	
	private static final long serialVersionUID = 2794968347754259368L;

	private int id;
	
	private String name;
	
	private int channelId;//所属频道

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

	public int getChannelId() {
		return channelId;
	}

	public void setChannelId(int channelId) {
		this.channelId = channelId;
	}
}

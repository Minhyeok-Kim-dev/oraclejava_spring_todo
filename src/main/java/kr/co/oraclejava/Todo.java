package kr.co.oraclejava;

import java.io.Serializable;
import java.util.Date;

public class Todo implements Serializable{
	private static final long serialVersionUID = -7786828013694423043L;
	private int id;
	private String name;
	private String comm;
	private boolean completed;
	private Date updatedAt;
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
	public String getComm() {
		return comm;
	}
	public void setComm(String comm) {
		this.comm = comm;
	}
	public boolean isCompleted() {
		return completed;
	}
	public void setCompleted(boolean completed) {
		this.completed = completed;
	}
	public Date getUpdatedAt() {
		return updatedAt;
	}
	public void setUpdatedAt(Date updatedAt) {
		this.updatedAt = updatedAt;
	}
	@Override
	public String toString() {
		return "Todo [id=" + id + ", name=" + name + ", comm=" + comm + ", completed=" + completed + ", updatedAt="
				+ updatedAt + "]";
	}
}

package model;

import com.google.gson.annotations.SerializedName;

public class Category {
	private int id;
	@SerializedName("nombre")
	private String name;

	public int getId() {
		return id;
	}

	public String getName() {
		return name;
	}

	@Override
	public String toString() {
		return "Category [id=" + id + ", name=" + name + "]";
	}

}
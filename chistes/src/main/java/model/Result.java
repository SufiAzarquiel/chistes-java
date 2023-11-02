package model;

import java.util.ArrayList;

import com.google.gson.annotations.SerializedName;

public class Result {
	@SerializedName("categorias")
	private ArrayList<Category> categories;

	public ArrayList<Category> getCategories() {
		return categories;
	}

	@SerializedName("chistes")
	private ArrayList<Joke> jokes;

	public ArrayList<Joke> getJokes() {
		return jokes;
	}
}

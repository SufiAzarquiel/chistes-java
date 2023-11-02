package model;

import com.google.gson.annotations.SerializedName;

public class Joke {
	private int id;
	@SerializedName("idcategoria")
	private int idcat;
	@SerializedName("contenido")
	private String content;

	public int getId() {
		return id;
	}

	public int getIdcat() {
		return idcat;
	}

	public String getContent() {
		return content;
	}

	@Override
	public String toString() {
		return "Joke [id=" + id + ", idcat=" + idcat + ", content=" + content + "]";
	}

}
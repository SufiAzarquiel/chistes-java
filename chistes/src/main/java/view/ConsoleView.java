package view;

import handler.WebHandler;
import model.Category;
import model.Joke;
import model.Result;

public class ConsoleView {
	public static void main(String[] args) {
		WebHandler handlerCats = new WebHandler("http://www.ies-azarquiel.es/paco/apichistes/categorias");
		Result result = handlerCats.getResult();
		for (Category cat : result.getCategories()) {
			System.out.println(cat);
		}

		WebHandler handlerJokes = new WebHandler("http://www.ies-azarquiel.es/paco/apichistes/categoria/4/chistes");
		result = handlerJokes.getResult();
		for (Joke joke : result.getJokes()) {
			System.out.println(joke);
		}
	}
}
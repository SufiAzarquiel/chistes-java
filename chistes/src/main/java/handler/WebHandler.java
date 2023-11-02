package handler;

import java.io.IOException;
import java.net.MalformedURLException;
import java.net.URL;
import java.nio.charset.Charset;

import org.apache.commons.io.IOUtils;

import com.google.gson.Gson;

import model.Result;

public class WebHandler {

	private Result result;

	public WebHandler(String urlTxt) {
		try {
			// traer JSON de internet a través de la URL en formato String
			String jsonTxt = IOUtils.toString(new URL(urlTxt), Charset.forName("UTF-8"));
			// serializar
			result = new Gson().fromJson(jsonTxt, Result.class);
		} catch (MalformedURLException e) {
			e.printStackTrace();
		} catch (IOException e) {
			e.printStackTrace();
		}
	}

	public Result getResult() {
		return result;
	}
}
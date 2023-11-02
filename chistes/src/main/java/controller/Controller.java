package controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import handler.WebHandler;
import model.Result;

/**
 * Servlet implementation class Controller
 */
@WebServlet("/Controller")
public class Controller extends HttpServlet {
	private static final long serialVersionUID = 1L;

	private Result result;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public Controller() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		HttpSession session = request.getSession();
		String op = request.getParameter("op");

		switch (op) {
		case "inicio": {
			WebHandler handlerCats = new WebHandler("http://www.ies-azarquiel.es/paco/apichistes/categorias");
			result = handlerCats.getResult();
			session.setAttribute("cats", result.getCategories().toArray());
			request.getRequestDispatcher("page.jsp").forward(request, response);
		}
		case "detallesinicio": {
			String cat = request.getParameter("cat");
			String catname = request.getParameter("catname");
			WebHandler handlerJokes = new WebHandler(
					"http://www.ies-azarquiel.es/paco/apichistes/categoria/+" + cat + "/chistes");
			result = handlerJokes.getResult();
			request.setAttribute("catname", catname);
			request.setAttribute("jokes", result.getJokes().toArray());
			request.getRequestDispatcher("page.jsp").forward(request, response);
			break;
		}
		default:
			throw new IllegalArgumentException("Unexpected value: " + op);
		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}
}
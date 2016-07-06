package controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class Page
 */
public class Page extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Page() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String action = request.getParameter("action");
		if(action==null){
			action="index";
		}
		switch (action) {
		case "login":
			request.getRequestDispatcher("/WEB-INF/view/Index/login.jsp").forward(request, response);
			break;
		case "aboutUs":
			request.getRequestDispatcher("/WEB-INF/view/Index/aboutus.jsp").forward(request, response);

			break;
		case "contactUs":
			request.getRequestDispatcher("/WEB-INF/view/Index/contact.jsp").forward(request, response);

			break;
		default:
			request.getRequestDispatcher("/WEB-INF/view/Index/index.jsp").forward(request, response);
			break;
		}
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}

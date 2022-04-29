package claims.controller;

import claims.service.ClaimsService;
import helpers.app.AppHelpers;

import java.io.IOException;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class DeleteClaim
 */
@WebServlet("/DeleteClaim")
public class DeleteClaim extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private ClaimsService claimsService;


	/**
     * @see HttpServlet#HttpServlet()
     */
    public DeleteClaim() {
        super();
		claimsService = new ClaimsService();
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");


		Integer claimID = Integer.valueOf(request.getParameter("id"));

		claimsService.deleteClaimRequest(claimID);

		RequestDispatcher rd;
		String url = "/claims-manage.jsp?&status=";
		rd = request.getRequestDispatcher(url + "true");
		rd.forward(request, response);


		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}
}

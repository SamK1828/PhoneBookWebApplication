package phonebook.controller;

import phonebook.service.ContactService;
import java.io.IOException;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/deleteContact")
public class DeleteContactServlet extends HttpServlet {

	private ContactService contactService;

	@Override
	public void init() throws ServletException {
		contactService = new ContactService();
	}

	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		try {
			int id = Integer.parseInt(request.getParameter("id"));
			boolean deleted = contactService.deleteContact(id);

			if (deleted) {
//				response.sendRedirect("/viewContacts");
				response.sendRedirect(request.getContextPath() + "/viewContacts");
			} else {
				response.getWriter().println("Failed to delete contact with ID: " + id);
			}

		} catch (Exception e) {
			e.printStackTrace();
			response.sendRedirect("viewContacts");
		}
	}
}

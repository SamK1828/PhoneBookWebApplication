package phonebook.controller;

import phonebook.service.ContactService;
import jakarta.servlet.*;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.*;
import java.io.IOException;

@WebServlet("/deleteContact")
public class DeleteContactServlet extends HttpServlet {
	private ContactService contactService = new ContactService();

	@Override
	public void init() throws ServletException {
		contactService = new ContactService();
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		int id = Integer.parseInt(request.getParameter("id"));

		boolean deleted = contactService.deleteContact(id);

		if (deleted) {
			response.sendRedirect("viewContacts");
;
		} else {
			response.sendRedirect("view_contacts.jsp?msg=error");
		}
	}
}

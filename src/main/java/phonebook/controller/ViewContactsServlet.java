package phonebook.controller;

import phonebook.model.Contact;
import phonebook.service.ContactService;

import java.io.IOException;
import java.util.List;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/viewContacts")
public class ViewContactsServlet extends HttpServlet {

	private ContactService contactService;

	@Override
	public void init() throws ServletException {
		contactService = new ContactService();
	}

	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		List<Contact> contacts = contactService.getAllContacts();
		request.setAttribute("contacts", contacts);
		request.getRequestDispatcher("view_contacts.jsp").forward(request, response);
	}
}

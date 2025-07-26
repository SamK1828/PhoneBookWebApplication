package phonebook.controller;

import phonebook.model.Contact;
import phonebook.service.ContactService;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.*;
import java.io.IOException;

@WebServlet("/addContact")
public class AddContactServlet extends HttpServlet {
	private ContactService contactService = new ContactService();

	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		// Fetch form data
		String name = request.getParameter("name");
		String phone = request.getParameter("phone");
		String email = request.getParameter("email");
		String address = request.getParameter("address");

		// Populate model
		Contact contact = new Contact();
		contact.setName(name);
		contact.setPhone(phone);
		contact.setEmail(email);
		contact.setAddress(address); 
		// Save contact using service
		boolean isSaved = contactService.addContact(contact);

		// Redirect to view page
		if (isSaved) {
//            response.sendRedirect("viewContacts");
			response.sendRedirect(request.getContextPath() + "/viewContacts");

		} else {
			response.sendRedirect("add_contact.jsp?msg=error");
		}
	}
}

package phonebook.controller;

import phonebook.model.Contact;
import phonebook.service.ContactService;
import java.io.IOException;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/updateContact")
public class UpdateContactServlet extends HttpServlet {

    private ContactService contactService;

    @Override
    public void init() throws ServletException {
        contactService = new ContactService();
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        try {
            int id = Integer.parseInt(request.getParameter("id"));
            String name = request.getParameter("name");
            String phone = request.getParameter("phone");
            String email = request.getParameter("email");
            String address = request.getParameter("address");

            Contact contact = new Contact(id, name, phone, email, address);
            boolean updated = contactService.updateContact(contact);

            if (updated) {
//                response.sendRedirect("/viewContacts");
            	response.sendRedirect(request.getContextPath() + "/viewContacts");

            } else {
                response.sendRedirect("edit_contact.jsp?id=" + id);
            }

        } catch (Exception e) {
            e.printStackTrace();
            response.sendRedirect("viewContacts");
        }
    }
}

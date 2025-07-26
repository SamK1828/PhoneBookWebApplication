package phonebook.controller;

import phonebook.model.Contact;
import phonebook.service.ContactService;

import java.io.IOException;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/editContact")
public class EditContactServlet extends HttpServlet {

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
            Contact contact = contactService.getContactById(id);

            if (contact != null) {
                request.setAttribute("contact", contact);
                request.getRequestDispatcher("edit_contact.jsp").forward(request, response);
            } else {
                response.sendRedirect("view_contacts.jsp");
            }

        } catch (Exception e) {
            e.printStackTrace();
            response.sendRedirect("view_contacts.jsp");
        }
    }
}

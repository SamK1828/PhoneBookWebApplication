package phonebook.service;

import phonebook.model.Contact;
import phonebook.dao.ContactDAO;

import java.util.List;

public class ContactService {
    private ContactDAO dao = new ContactDAO();
    public boolean addContact(Contact contact) {
        return dao.insertContact(contact);
    }
    public boolean updateContact(Contact contact) {
        return dao.updateContact(contact);
    }

    public List<Contact> getAllContacts() {
        return dao.getAllContacts();
    }

    public Contact getContactById(int id) {
        return dao.getContactById(id);
    }
    
    public boolean deleteContact(int id) {
        return dao.deleteContact(id);
    }

    
}

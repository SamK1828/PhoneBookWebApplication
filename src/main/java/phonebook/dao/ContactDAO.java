package phonebook.dao;

import phonebook.model.Contact;
import phonebook.util.DBConnection;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class ContactDAO {
	public boolean insertContact(Contact contact) {
		boolean success = false;
		final String sql = "INSERT INTO contacts (name, phone, email, address) VALUES (?, ?, ?, ?)";

		try {
			Connection con = DBConnection.getConnection();
			PreparedStatement ps = con.prepareStatement(sql);

			ps.setString(1, contact.getName());
			ps.setString(2, contact.getPhone());
			ps.setString(3, contact.getEmail());
			ps.setString(4, contact.getAddress());

			int rows = ps.executeUpdate();
			success = rows > 0;

		} catch (Exception e) {
			e.printStackTrace();
		}
		return success;
	}

	public boolean updateContact(Contact contact) {
		final String sql = "UPDATE contacts SET name=?, phone=?, email=?, address=? WHERE id=?";
		try {
			Connection con = DBConnection.getConnection();
			PreparedStatement ps = con.prepareStatement(sql);
			ps.setString(1, contact.getName());
			ps.setString(2, contact.getPhone());
			ps.setString(3, contact.getEmail());
			ps.setString(4, contact.getAddress());
			ps.setInt(5, contact.getId());

			return ps.executeUpdate() > 0;

		} catch (Exception e) {
			e.printStackTrace();
			return false;
		}
	}

	public Contact getContactById(int id) {
		final String sql = "SELECT * FROM contacts WHERE id=?";
		try {
			Connection con = DBConnection.getConnection();
			PreparedStatement ps = con.prepareStatement(sql);
			ps.setInt(1, id);
			ResultSet rs = ps.executeQuery();
			if (rs.next()) {
				return new Contact(rs.getInt("id"), rs.getString("name"), rs.getString("phone"), rs.getString("email"),
						rs.getString("address"));
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return null;
	}

	public List<Contact> getAllContacts() {
		List<Contact> list = new ArrayList<>();
		final String sql = "SELECT * FROM contacts";
		try {
			Connection con = DBConnection.getConnection();
			Statement st = con.createStatement();
			ResultSet rs = st.executeQuery(sql);

			while (rs.next()) {
				list.add(new Contact(rs.getInt("id"), rs.getString("name"), rs.getString("phone"),
						rs.getString("email"), rs.getString("address")));
			}

		} catch (Exception e) {
			e.printStackTrace();
		}
		return list;
	}

	public boolean deleteContact(int id) {
		final String sql = "DELETE FROM contacts WHERE id=?";
		try {

			Connection con = DBConnection.getConnection();
			PreparedStatement ps = con.prepareStatement(sql);
			ps.setInt(1, id);
			return ps.executeUpdate() > 0;
		} catch (Exception e) {
			e.printStackTrace();
			return false;
		}
	}

}

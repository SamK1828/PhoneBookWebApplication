# 📞 Phonebook Web Application

This is a web-based Phonebook Management System developed as part of an internship project at **Kiran Academy x ThunderCube Pvt. Ltd.**. The application allows users to perform CRUD operations (Create, Read, Update, Delete) on contact entries using a user-friendly interface.

---

## 🚀 Features

- Add New Contact
- View All Contacts
- Edit Existing Contact
- Delete Contact with Confirmation
- Clean UI using HTML/CSS (Frontend handled collaboratively)

---

## 🛠️ Technologies Used

- **Java** (Core backend logic)
- **JSP** (Frontend page rendering)
- **Servlets** (Controller logic)
- **JDBC** (Database connectivity)
- **MySQL** (Relational database)
- **HTML/CSS** (Frontend UI)

---

## 📂 Project Structure (MVC Architecture)

```

PhonebookWebApp/
├── src/
│   └── phonebook/
│       ├── controller/       # Servlets (ViewContactsServlet, AddContactServlet, etc.)
│       ├── dao/              # Database access logic
│       ├── model/            # POJO class (Contact.java)
│       └── service/          # Business logic layer
├── WebContent/
│   ├── add_contact.jsp
│   ├── view_contacts.jsp
│   ├── dashboard.jsp
│   └── ...
├── lib/                      # JDBC driver (MySQL Connector)
└── web.xml                   # Servlet configuration (if needed)

````

---

## 🧑‍💻 Collaborators

- **Samarth Kalegaonkar** – Backend Developer  
- **Sanchita Patil** – Frontend Developer

---

## 💾 Database Configuration

1. Import the following SQL in MySQL to create the `contacts` table:
```sql
CREATE DATABASE phonebookdb;

USE phonebookdb;

CREATE TABLE contacts (
    id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(100),
    phone VARCHAR(15),
    email VARCHAR(100),
    address TEXT
);
````

2. Update `DBConnection.java` with your MySQL credentials:

```java
String url = "jdbc:mysql://localhost:3306/phonebookdb";
String user = "yourUsername";
String password = "yourPassword";
```

---
<!--
## 📸 Screenshots

> Add screenshots of your Dashboard, Add Contact Form, and Contact List if available.

---
-->
## 📁 How to Run (Eclipse)

1. Clone the repository:

   ```bash
   git clone <repo-url>
   ```

2. Import as a **Dynamic Web Project** in Eclipse.

3. Add the **MySQL Connector JAR** to `lib` and build path.

4. Start your Apache Tomcat Server.

5. Access the app at:
   [http://localhost:8080/PhonebookWebApp/dashboard.jsp](http://localhost:8080/PhonebookWebApp/dashboard.jsp)

---

## 📬 Contact

For queries or suggestions:

* Samarth Kalegaonkar – [kalegaonkarsamarth@gmail.com](mailto:kalegaonkarsamarth@gmail.com)
* Sanchita Patil - [patilsanchita2004@gmail.com](mailto:patilsanchita2004@gmail.com)

---

## 📄 License

This project is licensed under the **MIT License**. You’re free to use, modify, and distribute with proper attribution.

---

✅ We hope this project helps beginners understand the MVC pattern and JDBC connectivity in a practical web-based environment.

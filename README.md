# 🧾 Online Expense Tracker

An **Online Expense Tracker Web Application** built using **Java, JSP, Servlet, Hibernate, and MySQL** that allows users to securely manage and track their daily expenses.  
Each user can add, view, and manage their expenses after login.

---

## 🚀 Features

- 🔐 User Authentication (Login & Logout)
- 👤 User-wise Expense Management
- ➕ Add New Expenses
- 📄 View All Expenses in Tabular Format
- 🗂 Expenses Linked to Logged-in User
- 🛡 Session Management for Security
- 🧱 MVC Architecture
- 💾 Database Persistence using Hibernate ORM

---

## 🛠️ Tech Stack

| Layer | Technology |
|-----|-----------|
| Frontend | JSP, HTML, CSS, Bootstrap |
| Backend | Java, Servlet |
| ORM | Hibernate |
| Database | MySQL |
| Server | Apache Tomcat |
| IDE | VS Code / Eclipse |
| Version Control | Git & GitHub |

---

## 📁 Project Structure

OnlineExpenseTracker
│
├── src/main/java
│ ├── com.entity
│ │ ├── User.java
│ │ └── Expense.java
│ │
│ ├── com.dao
│ │ ├── UserDAO.java
│ │ └── ExpenseDAO.java
│ │
│ ├── com.servlet
│ │ ├── LoginServlet.java
│ │ ├── LogoutServlet.java
│ │ └── SaveExpenseServlet.java
│ │ |__ DeleteExpenseServlet.java
| | |__ UpdateExpenseServlet.java
│ └── com.db
│ └── HibernateUtil.java
│
├── src/main/webapp
│ ├── user
│ │ ├── home.jsp
│ │ ├── add_expense.jsp
│ │ └── view_expense.jsp
│ │
│ ├── component
│ │ ├── navbar.jsp
│ │ └── all_css.jsp
│ │
│ ├── login.jsp
│ └── register.jsp
│ |___index.jsp
└── pom.xml

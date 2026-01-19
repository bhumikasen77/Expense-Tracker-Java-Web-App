package com.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.dao.UserDAO;
import com.db.HibernateUtil;
import com.entity.User;

@WebServlet("/userRegister")
public class RegisterServlet extends HttpServlet{

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String fullName = req.getParameter("fullname");
		String email = req.getParameter("email");
		String password = req.getParameter("password");
		String about = req.getParameter("about");
		
		User u  = new User(fullName, email, password, about);
		//System.out.print(u);
		UserDAO dao = new UserDAO(HibernateUtil.getSessionFactory());
		boolean f = dao.saveUser(u);
		
		HttpSession session = req.getSession();
		if(f) {
			session.setAttribute("msg", "Registered Successfully");
			resp.sendRedirect("register.jsp");
			//System.out.print("Registered Successfully");
		}else {
			session.setAttribute("msg", "Something went wrong on server");
			resp.sendRedirect("register.jsp");
			//System.out.print("Something went wrong on server");
		}
	}

}

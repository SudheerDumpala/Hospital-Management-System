package com.Admin.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.entity.User;

@WebServlet("/AdminLogin")
public class AdminLogin extends HttpServlet{

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		try {
			String email = req.getParameter("email");
			String password = req.getParameter("password");
			
			HttpSession session = req.getSession();
			if("admin@gmail.com".equals(email) && "admin".equals(password)) {
				session.setAttribute("AdminObj", new User());
				resp.sendRedirect("Admin/index.jsp");
			}
			else {
				session.setAttribute("ErrMsg","Invalid Email & Password");
				resp.sendRedirect("Admin.jsp");
			}
		}
		catch(Exception e){
			e.printStackTrace();
		}
		
	}
	
}

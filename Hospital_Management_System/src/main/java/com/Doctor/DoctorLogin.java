package com.Doctor;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.dao.DoctorDao;
import com.db.DbConnect;
import com.entity.Doctor;

@WebServlet("/doctorLogin")
public class DoctorLogin extends HttpServlet{

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		try {
			String email = req.getParameter("email");
			String password = req.getParameter("password");
			
			HttpSession session = req.getSession();
			DoctorDao dao = new DoctorDao(DbConnect.getConn());
			Doctor doc = dao.Login(email, password);
			if(doc!=null) {
				session.setAttribute("doctObj",doc);
				resp.sendRedirect("doctor/index.jsp");
			}
			else {
				session.setAttribute("ErrMsg","Invalid username or Password");
				resp.sendRedirect("doctor.jsp");
			}
		}
		catch(Exception e) {
			e.printStackTrace();
		}
	}
	 
}

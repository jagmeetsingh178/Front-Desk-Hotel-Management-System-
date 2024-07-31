package com.jsp.hotem_management_system.admin.controller;

import java.io.IOException;

import com.jsp.hotem_management_system.admin.dao.HotelOwnerDao;
import com.jsp.hotem_management_system.dto.HotelOwner;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

@SuppressWarnings("serial")
@WebServlet(value = "/hotelOwnerLogin")
public class HotelOwnerLoginController extends HttpServlet
{

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		HttpSession httpSession =  req.getSession();
		
		
		String email = req.getParameter("email");
		String password = req.getParameter("password");
		
		
		
		HotelOwner  owner2 = new HotelOwnerDao().fetchHotelOwnerByEmailDao(email);
		if(owner2!=null) {
			if(password.equals(owner2.getPassword())) {
				httpSession.setAttribute("hownerSession", email);
				req.getRequestDispatcher("home-hotel-owner.jsp").forward(req, resp);
			}
			else {
				req.setAttribute("msg", "Wrong Password!!!");
				req.getRequestDispatcher("login-hotel-owner.jsp").forward(req, resp);
			}
			
		}
		else {
			req.setAttribute("msg", "Email is in Correct!!!");
			req.getRequestDispatcher("login-hotel-owner.jsp").forward(req, resp);
		}
	}
}

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

@WebServlet(value = "/verifyController")
public class HotelOwnerVerifyController extends HttpServlet{
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		HttpSession httpSession = req.getSession();

		HotelOwnerDao dao = new HotelOwnerDao();

		String email = req.getParameter("email");

		System.out.println(email);

		if (httpSession.getAttribute("adminSession") != null) {
			HotelOwner owner = dao.fetchHotelOwnerByEmailDao(email);
			System.out.println(owner);

			if (owner.getVerify().equalsIgnoreCase("yes")) {
				dao.updateStatusToNosDao(email);
			} else {
				dao.updateStatusToYesDao(email);
			}
			resp.sendRedirect("admin-home.jsp");
		} else {
			req.setAttribute("msg", "Please Login With Admin and Perform Task......");
			req.getRequestDispatcher("admin-login.jsp").forward(req, resp);
		}
	}
}

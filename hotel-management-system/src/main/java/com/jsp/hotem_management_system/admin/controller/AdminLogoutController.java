package com.jsp.hotem_management_system.admin.controller;

import java.io.IOException;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

@WebServlet(value = "/logoutAdmin")
public class AdminLogoutController extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		HttpSession httpSession = req.getSession();

		if (httpSession.getAttribute("adminSession") != null) {
			httpSession.invalidate();
			
			req.setAttribute("msg", "Successfully Logout!!!");
			req.getRequestDispatcher("admin-login.jsp").forward(req, resp);
		}
	}
}

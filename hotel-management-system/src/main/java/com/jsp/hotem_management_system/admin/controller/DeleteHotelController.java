package com.jsp.hotem_management_system.admin.controller;

import java.io.IOException;

import com.jsp.hotem_management_system.admin.dao.HotelDao;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet(value = "/deleteHotel")
public class DeleteHotelController extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		int id = Integer.parseInt(req.getParameter("id"));
		
		boolean b=new HotelDao().deleteHotelByIdDao(id);
		
		if(b) {
			
			resp.sendRedirect("home-hotel-owner.jsp");
		}
	}
}

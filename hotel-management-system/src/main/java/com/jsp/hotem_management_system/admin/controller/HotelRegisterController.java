package com.jsp.hotem_management_system.admin.controller;

import java.io.IOException;
import java.io.InputStream;

import com.jsp.hotem_management_system.admin.dao.HotelDao;
import com.jsp.hotem_management_system.admin.dao.HotelOwnerDao;
import com.jsp.hotem_management_system.dto.Hotel;
import com.jsp.hotem_management_system.dto.HotelOwner;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.MultipartConfig;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import jakarta.servlet.http.Part;

@SuppressWarnings("serial")
@WebServlet(value = "/hotelRegister")
@MultipartConfig(maxFileSize = 1024*1024*5)
public class HotelRegisterController extends HttpServlet {

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		HttpSession httpSession = req.getSession();
		
		String name = req.getParameter("name");
		String city = req.getParameter("city");
		String address = req.getParameter("address");
		double price = Double.parseDouble(req.getParameter("price"));
		
		Part part = req.getPart("image");
		
		InputStream inputStream = part.getInputStream();
		
		String email = (String) httpSession.getAttribute("hownerSession");
		
		if(email!=null) {
			
			HotelOwner hotelOwner = new HotelOwnerDao().fetchHotelOwnerByEmailDao(email);
			
			Hotel hotel = new Hotel(name, city, address, price, inputStream.readAllBytes(), hotelOwner);
			
			Hotel hotel2 = new HotelDao().saveHotelDao(hotel);
			
			
			
			req.setAttribute("msg", "Hotel Register Successfully");
		}
		else {
			req.setAttribute("msg", "Please Login With Hotel Owner and Then Register");
			req.getRequestDispatcher("login-hotel-owner.jsp").forward(req, resp);
		}
		
		
	}
}

<%@page import="com.jsp.hotem_management_system.admin.dao.HotelOwnerDao"%>
<%@page import="com.jsp.hotem_management_system.dto.HotelOwner"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Hotel-Owner-Display</title>
<!-- Font Awesome -->
<link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css" rel="stylesheet" />
<!-- Google Fonts -->
<link href="https://fonts.googleapis.com/css?family=Roboto:300,400,500,700&display=swap" rel="stylesheet" />
<!-- MDB -->
<link href="https://cdnjs.cloudflare.com/ajax/libs/mdb-ui-kit/7.3.2/mdb.min.css" rel="stylesheet" />
</head>
<body>

<%
    List<HotelOwner> hotelOwners = new HotelOwnerDao().getAllHotelOwnerDetailsDao();
%>

<table class="table align-middle mb-0 bg-white">
    <thead class="bg-light">
        <tr>
            <th>ID:</th>
            <th>Name:</th>
            <th>Email:</th>
            <th>Status:</th>
            <th>Actions:</th>
        </tr>
    </thead>
    <tbody>
        <%
        for (HotelOwner owner : hotelOwners) {
            String verifyStatus = owner.getVerify();
        %>
        <tr>
            <td>
                <div class="d-flex align-items-center">
                    <div class="ms-3">
                        <p class="fw-bold mb-1"><%=owner.getId()%></p>
                    </div>
                </div>
            </td>
            <td>
                <p class="fw-normal mb-1"><%=owner.getName()%></p>
            </td>
            <td><%=owner.getEmail()%></td>
            <td>
                <%
                if (verifyStatus != null && verifyStatus.equalsIgnoreCase("yes")) {
                %> 
                <span class="badge rounded-pill d-inline btn btn-success">Verified</span>
                <%
                } else {
                %> 
                <span class="badge rounded-pill d-inline btn btn-danger">Verify</span>
                <%
                }
                %>
            </td>
            <td><a href="verifyController?email=<%=owner.getEmail()%>" class="btn btn-link btn-sm btn-rounded" target=_blank> 
                <%
                if (owner.getVerify() != null && owner.getVerify().equalsIgnoreCase("yes")) {
                %>
                    <span class="badge rounded-pill d-inline btn btn-success">Verified</span>
                <%
                } else {
                %> 
                    <span class="badge rounded-pill d-inline btn btn-danger">Verify</span>
                <%
                }
                %>
            </a></td>
        </tr>
        <%
        }
        %>
    </tbody>
</table>
</body>
</html>
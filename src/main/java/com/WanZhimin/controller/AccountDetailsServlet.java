package com.WanZhimin.controller;

import com.WanZhimin.dao.OrderDao;
import com.WanZhimin.dao.UserDao;
import com.WanZhimin.model.Order;
import com.WanZhimin.model.User;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.sql.Connection;
import java.sql.SQLException;
import java.util.List;

@WebServlet(name = "AccountDetailsServlet", value = "/accountDetails")
public class AccountDetailsServlet extends HttpServlet {
    Connection con = null;
    @Override
    public void init()throws ServletException{
        super.init();
        con = (Connection) getServletContext().getAttribute("con");
    }
    @Override
    public void destroy(){
        super.destroy();
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession session = request.getSession(false);
        if(session!=null && session.getAttribute("user")!=null){
            User user = (User) session.getAttribute("user");
            int userId = user.getId();
            UserDao dao = new UserDao();

            request.setAttribute("user",user);
            OrderDao orderDao = new OrderDao();
            List<Order> orderList = orderDao.findByUserId(con,userId);
            request.setAttribute("orderList",orderList);
            request.getRequestDispatcher("WEB-INF/views/accountDetails.jsp").forward(request,response);

        }else {
            response.sendRedirect("login");
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request,response);
    }
}
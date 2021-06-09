package com.WanZhimin.controller;

import com.WanZhimin.dao.UserDao;
import com.WanZhimin.model.User;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.sql.Connection;
import java.sql.SQLException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;


@WebServlet(name = "UpdateUserServlet", value = "/updateUserServlet")
public class UpdateUserServlet extends HttpServlet {
    Connection con = null;
    @Override
    public void init() throws ServletException {
        super.init();
        con = (Connection) getServletContext().getAttribute("con");
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        request.getRequestDispatcher("WEB-INF/views/updateUser.jsp").forward(request,response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        int id = Integer.valueOf(request.getParameter("id"));
        String username = request.getParameter("username");
        String password = request.getParameter("password");
        String email = request.getParameter("email");
        String gender = request.getParameter("gender");
        String birthDate = request.getParameter("birthDate");

        User user = new User();
        user.setId(id);
        user.setUsername(username);
        user.setPassword(password);
        user.setEmail(email);
        user.setGender(gender);
        user.setBirthDate(DateUtil.convertStringToUtil(birthDate));
        //System.out.println(user.toString());
        UserDao userDao = new UserDao();

        try{
            int n = userDao.updateUser(con,user);
            User updateUser = userDao.findById(con,id);
            HttpSession session = request.getSession();
            session.removeAttribute("user");
            session.setAttribute("user",updateUser);
            request.getRequestDispatcher("accountDetails").forward(request,response);
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }

    }
}
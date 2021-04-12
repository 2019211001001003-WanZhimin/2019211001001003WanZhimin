package com.WanZhimin.week3;

import javax.servlet.*;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.*;
@WebServlet (name = "RegisterServlet", value = "/register")


public class RegisterServlet extends HttpServlet {
    Connection con = null;
    @Override
    public void init() throws ServletException {
        super.init();
        /*String driver = getServletConfig().getServletContext().getInitParameter("driver");
        String url = getServletConfig().getServletContext().getInitParameter("url");
        String username = getServletConfig().getServletContext().getInitParameter("username");
        String password = getServletConfig().getServletContext().getInitParameter("password");
        try{
            Class.forName(driver);
            Connection connection = DriverManager.getConnection(url,username,password);
            System.out.println("init()" + connection);
        } catch (ClassNotFoundException | SQLException e) {
            e.printStackTrace();
        }*/
        con = (Connection) getServletContext().getAttribute("con");
    }

        @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        doPost(request, response);

    }
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String id,name,password,email,gender,birthdate;
        id = request.getParameter("id");
        name = request.getParameter("name");
        password = request.getParameter("password");
        email = request.getParameter("email");
        gender = request.getParameter("sex");
        birthdate = request.getParameter("birthdate");

        try {
            Statement st = con.createStatement();
            String sql = "insert into usertable(username,password,email,gender,birthdate)" +
                    "values('" + name + "','" + password + "','" + email + "','" + gender + "','" + birthdate +"')";
            System.out.println("sql " + sql);

            int n = st.executeUpdate(sql);
            System.out.println("n-->" + n);

            sql = "select * from usertable";
            ResultSet rs = st.executeQuery(sql);
            PrintWriter printWriter = response.getWriter();

            response.sendRedirect("login.jsp");

        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }
    }
}

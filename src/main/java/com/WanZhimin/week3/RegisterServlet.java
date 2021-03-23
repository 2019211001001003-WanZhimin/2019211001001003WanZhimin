package com.WanZhimin.week3;

import javax.servlet.*;
import javax.servlet.http.*;
import java.io.IOException;
import java.io.PrintWriter;


public class RegisterServlet extends HttpServlet {

    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String name=request.getParameter("name");
        String password=request.getParameter("password");
        String email=request.getParameter("email");
        String sex=request.getParameter("sex");
        String birth=request.getParameter("birth");
        PrintWriter writer=response.getWriter();
        writer.println("name:"+name);
        writer.println("password:"+password);
        writer.println("email:"+email);
        writer.println("sex:"+sex);
        writer.println("birth:"+birth);
        writer.close();
    }
}

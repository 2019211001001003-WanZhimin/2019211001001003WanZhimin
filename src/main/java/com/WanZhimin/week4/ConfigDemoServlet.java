package com.WanZhimin.week4;

import javax.servlet.*;
import javax.servlet.annotation.WebInitParam;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;
import java.io.IOException;
import java.io.PrintWriter;

@WebServlet (name = "ConfigDemoServlet", value = "/config",
        initParams = {
                @WebInitParam(name = "name",value = "WanZhimin"),
                @WebInitParam(name = "studentId",value = "2019211001001003"),
        })

public class ConfigDemoServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        doPost(request,response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String name =getServletConfig().getInitParameter("name");
        String studentId = getServletConfig().getInitParameter("studentId");

        PrintWriter pw = response.getWriter();
        pw.write("<h1>name: "+ name+"</h1>");
        pw.write("<h1>studentId: : "+ studentId+"</h1>");

    }
}

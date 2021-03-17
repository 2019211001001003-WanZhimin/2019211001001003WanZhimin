package com.WanZhimin.week2.homework;

import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.Date;

public class HelloWorldServlet extends HttpServlet {

    String name="WanZhimin";
    String ID="2019211001001003";


    public void doget (HttpServletRequest request, HttpServletResponse response)
            throws IOException {
        PrintWriter writer = response.getWriter();
        Date date=new Date();
        writer.println("Name: "+ name +"<br/>");
        writer.println("ID: "+ ID +"<br/>");
        writer.println("Date and Time: "+date.toString()+"<br/>");
    }

    public void dopost (HttpServletRequest request, HttpServletResponse response){

    }
}

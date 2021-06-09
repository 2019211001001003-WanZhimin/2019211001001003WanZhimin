package com.WanZhimin.lab2;

import javax.servlet.*;
import javax.servlet.annotation.WebFilter;
import java.io.IOException;

@WebFilter(filterName = "WZMFilter")
public class WanZhiminFilter implements Filter {
    public void init(FilterConfig config) throws ServletException {

    }

    public void destroy() {
    }
@Override
    public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain) throws ServletException, IOException {
        System.out.println("WanZhiminFilter -- before chain");
        chain.doFilter(request,response);
        System.out.println("WanZhiminFilter -- after chain");
    }
}
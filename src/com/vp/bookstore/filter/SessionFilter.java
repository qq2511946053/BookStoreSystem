package com.vp.bookstore.filter;

import javax.servlet.*;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

/**
 * 拦截器
 */
public class SessionFilter implements Filter {

    @Override
    public void init(FilterConfig filterConfig) throws ServletException {

    }

    @Override
    public void doFilter(ServletRequest servletRequest, ServletResponse servletResponse, FilterChain filterChain) throws IOException, ServletException {
        HttpServletRequest httpServletRequest = (HttpServletRequest) servletRequest;
        HttpSession session = httpServletRequest.getSession();
        if (session.getAttribute("userInfo")!=null){
            filterChain.doFilter(servletRequest,servletResponse);
        }
        else{
            HttpServletResponse httpServletResponse=(HttpServletResponse)servletResponse;
            httpServletResponse.sendRedirect(httpServletRequest.getContextPath()+"/reception/login.jsp");
        }
    }

    @Override
    public void destroy() {

    }
}

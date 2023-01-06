package com.jwl.servlet.config;

import java.io.IOException;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.annotation.WebFilter;

//모든페이지 혹은 일부페이지만 필터적용 (annotation)
@WebFilter("/*")
//@WebFilter("/servlet/ex05")
public class EncodingFilter implements Filter{

		@Override
		public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain) throws IOException, ServletException {
			
			request.setCharacterEncoding("utf-8");
			response.setCharacterEncoding("utf-8");
			
			chain.doFilter(request, response);
			// 모든 웹페이지가 do filter를 거쳐간다
		}
}

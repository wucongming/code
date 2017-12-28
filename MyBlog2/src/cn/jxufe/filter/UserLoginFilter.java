package cn.jxufe.filter;

import java.io.IOException;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import cn.jxufe.entity.TUser;

public class UserLoginFilter implements Filter {

	@Override
	public void destroy() {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void doFilter(ServletRequest req, ServletResponse res,
			FilterChain chain) throws IOException, ServletException {
		// TODO Auto-generated method stub
		HttpServletRequest request = (HttpServletRequest)req;
		HttpSession session = request.getSession();
		TUser user = (TUser)session.getAttribute("user");
		String uri = request.getRequestURI();
		if(user != null) {

			System.out.println("通过");
			if(uri.contains("publish.jsp") && user.getUid().equals(2)) {
				chain.doFilter(req, res);				
			}
			chain.doFilter(req, res);
		} else {
			System.out.println("不通过");
			request.getRequestDispatcher("/login.jsp").forward(req, res);
			
		}
	}

	@Override
	public void init(FilterConfig filterConfig) throws ServletException {
		// TODO Auto-generated method stub
		
	}

}

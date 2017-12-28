package cn.jxufe.filter;

import java.io.File;
import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.junit.Test;

/**
 * 记录访问者
 * @author 吴丛明
 * 
 *
 */
public class VisitFilter implements Filter {

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
		Object visit = session.getAttribute("visit");
		if(visit == null) {
			visit = new Object();
			session.setAttribute("visit", visit);
			
			System.out.println(request.getRemoteAddr());
			System.out.println(request.getRemoteHost());
			System.out.println(request.getRemotePort());
			System.out.println(request.getRemoteUser());
		}
		chain.doFilter(req, res);
	}

	public String getFolder() {
		SimpleDateFormat format = new SimpleDateFormat("yyyy-MM-dd-hh-mm-ss");
		String time = format.format(new Date());
		String url = "C:/Users/Administrator/Desktop/javaEE/" + time+"/访问记录.txt";
		File file = new File(url);
		while(!file.exists()) {
			file.mkdirs();
			
		}
		return url;
	}
	
	@Test
	public void testGetFolder() {
		getFolder();
		
	}
	@Override
	public void init(FilterConfig arg0) throws ServletException {
		// TODO Auto-generated method stub
		
	}

}

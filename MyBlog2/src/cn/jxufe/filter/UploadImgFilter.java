package cn.jxufe.filter;

import java.io.IOException;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.struts2.dispatcher.StrutsRequestWrapper;
import org.apache.struts2.dispatcher.ng.filter.StrutsPrepareAndExecuteFilter;

public class UploadImgFilter extends StrutsPrepareAndExecuteFilter {

	@Override
	public void destroy() {
		// TODO Auto-generated method stub
		
	}
	String[] pageName = {"fileUp.jsp","getContent.jsp","getMovie.jsp","getRemoteImage.jsp","imageManager.jsp"
	                   ,"imageUp.jsp","scrawIUp.jsp"};
	@Override
	public void doFilter(ServletRequest req, ServletResponse res,
			FilterChain chain) throws IOException, ServletException {
		// TODO Auto-generated method stub
		HttpServletRequest request = (HttpServletRequest)req;
		HttpServletResponse response = (HttpServletResponse)res;
		request.setCharacterEncoding("utf-8");
		response.setCharacterEncoding("utf-8");
		String uri = request.getRequestURI();
		boolean isOk = false;
		for(String name:pageName) {
			if(uri.contains(name)) {
				isOk = true;
				break;
			}
		}
		if(isOk) {
			chain.doFilter(req,res);
		} else {
			 super.doFilter(req, res, chain);  
		}
	}

	@Override
	public void init(FilterConfig arg0) throws ServletException {
		// TODO Auto-generated method stub
		super.init(arg0);
	}

}

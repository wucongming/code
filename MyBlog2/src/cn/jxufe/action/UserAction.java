package cn.jxufe.action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.struts2.ServletActionContext;

import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;

import cn.jxufe.bean.Result;
import cn.jxufe.entity.TUser;
import cn.jxufe.service.interfaces.UserService;

public class UserAction extends ActionSupport implements ModelDriven<TUser> {

	private TUser user = new TUser();
	
	private UserService userService;

	private Result result;
	
	public TUser getUser() {
		return user;
	}

	public void setUser(TUser user) {
		this.user = user;
	}

	public Result getResult() {
		return result;
	}

	public void setResult(Result result) {
		this.result = result;
	}

	public UserService getUserService() {
		return userService;
	}

	public void setUserService(UserService userService) {
		this.userService = userService;
	}

	@Override
	public TUser getModel() {
		// TODO Auto-generated method stub
		return user;
	}
	
	public String login() {
		user = userService.login(user);
		if(user == null) {
			return ERROR;
		} else {
			HttpServletRequest request = ServletActionContext.getRequest();
			HttpSession session = request.getSession();
			session.setAttribute("user", user);
			return SUCCESS;
		}
	}
	
	public String register() {
		System.out.println(user.getAccount());
		System.out.println(user.getPassWord());
		System.out.println(user.getUserName());
		if(userService.findUserByAccount(user.getAccount()) == null) {
			userService.addUser(user);
		}
		user = userService.findUserByAccount(user.getAccount());
		HttpSession session = ServletActionContext.getRequest().getSession();
		session.setAttribute("user", user);
		return SUCCESS;
	}
	
	public String checkAccount() throws Exception {
		
		TUser tUser = userService.findUserByAccount(user.getAccount());
		result = new Result();
		if(tUser == null) {
			result.setType("OK");
			result.setContent(user.getAccount());
		} else {
			result.setType("ERROR");
		}
		return super.execute();
	}
	
	public String exit() {
		
		HttpSession session = ServletActionContext.getRequest().getSession();
		session.invalidate();
		return "error";
	}
}

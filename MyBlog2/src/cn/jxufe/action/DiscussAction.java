package cn.jxufe.action;

import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.struts2.ServletActionContext;

import cn.jxufe.bean.Result;
import cn.jxufe.entity.TDiscuss;
import cn.jxufe.entity.TUser;
import cn.jxufe.service.interfaces.DiscussService;

import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;

public class DiscussAction extends ActionSupport implements ModelDriven<TDiscuss>{

	private TDiscuss discuss = new TDiscuss();

	private DiscussService discussService;
	
	private Result result = new Result();
	
	public DiscussService getDiscussService() {
		return discussService;
	}

	public void setDiscussService(DiscussService discussService) {
		this.discussService = discussService;
	}

	public TDiscuss getDiscuss() {
		return discuss;
	}

	public void setDiscuss(TDiscuss discuss) {
		this.discuss = discuss;
	}

	@Override
	public TDiscuss getModel() {
		// TODO Auto-generated method stub
		return discuss;
	}
	
	public Result getResult() {
		return result;
	}

	public void setResult(Result result) {
		this.result = result;
	}

	public String add() {
		HttpServletRequest request = ServletActionContext.getRequest();
		HttpSession session = request.getSession();
		TUser user = (TUser)session.getAttribute("user");
		if(user != null) {
			discuss.setD_uid(user.getUid());
			SimpleDateFormat date = new SimpleDateFormat("yyyy-MM-dd-hh-mm-ss");
			
			discuss.setTime(date.format(new Date()));
			System.out.println(discuss.getTime());
			result.setType("success");
			result.setTime(discuss.getTime());
			result.setName(user.getUserName());
			result.setContent(discuss.getContent());
			discussService.addDiscuss(discuss);
			discuss = discussService.findDiscuss(discuss);
			result.setDid(discuss.getDid());
			
		} else {
			result.setType("error");
		}
		return "add";
	}
	
	public String delete() {
		
		discussService.deleteDiscuss(discuss.getDid());
		return SUCCESS;
	}
}

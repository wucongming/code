package cn.jxufe.action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.struts2.ServletActionContext;

import cn.jxufe.entity.TReply;
import cn.jxufe.entity.TUser;
import cn.jxufe.service.interfaces.ReplyService;

import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;

public class ReplyAction extends ActionSupport implements ModelDriven<TReply>{

	private TReply reply = new TReply();
	
	private ReplyService replyService;
	
	private int eid;
	
	public int getEid() {
		return eid;
	}

	public void setEid(int eid) {
		this.eid = eid;
	}

	public ReplyService getReplyService() {
		return replyService;
	}

	public void setReplyService(ReplyService replyService) {
		this.replyService = replyService;
	}

	public TReply getReply() {
		return reply;
	}

	public void setReply(TReply reply) {
		this.reply = reply;
	}

	@Override
	public TReply getModel() {
		// TODO Auto-generated method stub
		return reply;
	}
	
	public String add() {
		System.out.println(reply.getR_did());
		System.out.println(reply.getContent());
		HttpServletRequest request = ServletActionContext.getRequest();
		HttpSession session = request.getSession();
		TUser user = (TUser)session.getAttribute("user");

		reply.setR_uid(user.getUid());
		System.out.println("UID = "+reply.getR_uid());
		replyService.addReply(reply);
		return SUCCESS;
	}
}

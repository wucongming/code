package cn.jxufe.entity;

import java.util.HashSet;
import java.util.Set;

/**
 * TDiscuss entity. @author MyEclipse Persistence Tools
 */

public class TDiscuss implements java.io.Serializable {

	// Fields

	private int did;
	private int d_eid;
	private int d_uid;
	private TEssay TEssay;
	private TUser TUser;
	private String content;
	private String time;
	private Set TReplies = new HashSet<TReply>();

	// Constructors

	/** default constructor */
	public TDiscuss() {
	}

	/** minimal constructor */
	public TDiscuss(TEssay TEssay, TUser TUser, String content, String time) {
		this.TEssay = TEssay;
		this.TUser = TUser;
		this.content = content;
		this.time = time;
	}

	/** full constructor */
	public TDiscuss(TEssay TEssay, TUser TUser, String content, String time,
			Set TReplies) {
		this.TEssay = TEssay;
		this.TUser = TUser;
		this.content = content;
		this.time = time;
		this.TReplies = TReplies;
	}

	// Property accessors

	

	public int getD_eid() {
		return d_eid;
	}

	public void setD_eid(int d_eid) {
		this.d_eid = d_eid;
	}

	public int getD_uid() {
		return d_uid;
	}

	public void setD_uid(int d_uid) {
		this.d_uid = d_uid;
	}

	public void setDid(int did) {
		this.did = did;
	}

	public int getDid() {
		return did;
	}

	public TEssay getTEssay() {
		return this.TEssay;
	}

	public void setTEssay(TEssay TEssay) {
		this.TEssay = TEssay;
	}

	public TUser getTUser() {
		return this.TUser;
	}

	public void setTUser(TUser TUser) {
		this.TUser = TUser;
	}

	public String getContent() {
		return this.content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	public String getTime() {
		return this.time;
	}

	public void setTime(String time) {
		this.time = time;
	}

	public Set getTReplies() {
		return this.TReplies;
	}

	public void setTReplies(Set TReplies) {
		this.TReplies = TReplies;
	}

}
package cn.jxufe.entity;

/**
 * TReply entity. @author MyEclipse Persistence Tools
 */

public class TReply implements java.io.Serializable {

	// Fields

	private Integer rid;
	private TUser TUser;
	private TDiscuss TDiscuss;
	private String content;
	private int r_did;
	private int r_uid;
	
	// Constructors

	public int getR_did() {
		return r_did;
	}

	public void setR_did(int r_did) {
		this.r_did = r_did;
	}

	public int getR_uid() {
		return r_uid;
	}

	public void setR_uid(int r_uid) {
		this.r_uid = r_uid;
	}

	/** default constructor */
	public TReply() {
	}

	/** full constructor */
	public TReply(TUser TUser, TDiscuss TDiscuss, String content) {
		this.TUser = TUser;
		this.TDiscuss = TDiscuss;
		this.content = content;
	}

	// Property accessors



	public TUser getTUser() {
		return this.TUser;
	}

	public Integer getRid() {
		return rid;
	}

	public void setRid(Integer rid) {
		this.rid = rid;
	}

	public void setTUser(TUser TUser) {
		this.TUser = TUser;
	}

	public TDiscuss getTDiscuss() {
		return this.TDiscuss;
	}

	public void setTDiscuss(TDiscuss TDiscuss) {
		this.TDiscuss = TDiscuss;
	}

	public String getContent() {
		return this.content;
	}

	public void setContent(String content) {
		this.content = content;
	}

}
package cn.jxufe.entity;

import java.util.ArrayList;
import java.util.HashSet;
import java.util.Set;

/**
 * TUser entity. @author MyEclipse Persistence Tools
 */

public class TUser implements java.io.Serializable {

	// Fields

	private Integer uid;
	private String userName;
	private String account;
	private String passWord;
	private String jiesao;
	private String headImg;
	private Integer fenshiNum;
	private Set<TStage> tStages = new HashSet<TStage>();
	private Set<TDiscuss> tDiscuss = new HashSet<TDiscuss>();
	private Set<TReply> tReplies = new HashSet<TReply>();
	
	public Set<TReply> gettReplies() {
		return tReplies;
	}
	public void settReplies(Set<TReply> tReplies) {
		this.tReplies = tReplies;
	}
	public Set<TDiscuss> gettDiscuss() {
		return tDiscuss;
	}
	public void settDiscuss(Set<TDiscuss> tDiscuss) {
		this.tDiscuss = tDiscuss;
	}
	// Constructors

	/** default constructor */
	public TUser() {
	}

	/** minimal constructor */
	public TUser(String userName, String account, String passWord,
			Integer fenshiNum) {
		this.userName = userName;
		this.account = account;
		this.passWord = passWord;
		this.fenshiNum = fenshiNum;
	}

	/** full constructor */
	public TUser(String userName, String account, String passWord,
			String jiesao, String headImg, Integer fenshiNum, Set<TStage> TStages) {
		this.userName = userName;
		this.account = account;
		this.passWord = passWord;
		this.jiesao = jiesao;
		this.headImg = headImg;
		this.fenshiNum = fenshiNum;
		this.tStages = TStages;
	}

	// Property accessors

	public Integer getUid() {
		return this.uid;
	}

	public void setUid(Integer uid) {
		this.uid = uid;
	}

	public String getUserName() {
		return this.userName;
	}

	public void setUserName(String userName) {
		this.userName = userName;
	}

	public String getAccount() {
		return this.account;
	}

	public void setAccount(String account) {
		this.account = account;
	}

	public String getPassWord() {
		return this.passWord;
	}

	public void setPassWord(String passWord) {
		this.passWord = passWord;
	}

	public String getJiesao() {
		return this.jiesao;
	}

	public void setJiesao(String jiesao) {
		this.jiesao = jiesao;
	}

	public String getHeadImg() {
		return this.headImg;
	}

	public void setHeadImg(String headImg) {
		this.headImg = headImg;
	}

	public Integer getFenshiNum() {
		return this.fenshiNum;
	}

	public void setFenshiNum(Integer fenshiNum) {
		this.fenshiNum = fenshiNum;
	}

	public Set<TStage> gettStages() {
		return tStages;
	}

	public void settStages(Set<TStage> tStages) {
		this.tStages = tStages;
	}


}
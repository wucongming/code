package cn.jxufe.entity;

import java.util.ArrayList;
import java.util.HashSet;
import java.util.Set;

/**
 * TStage entity. @author MyEclipse Persistence Tools
 */

public class TStage implements java.io.Serializable {

	// Fields

	private int sid;
	private TUser TUser;
	private String stageName;
	private int s_uid;
	private Set<TEssay> tEssaies = new HashSet<TEssay>();

	// Constructors

	/** default constructor */
	public TStage() {
	}

	/** minimal constructor */
	public TStage(TUser TUser, String stageName) {
		this.TUser = TUser;
		this.stageName = stageName;
	}

	/** full constructor */
	public TStage(TUser TUser, String stageName, Set<TEssay> TEssaies) {
		this.TUser = TUser;
		this.stageName = stageName;
		this.tEssaies = TEssaies;
	}

	// Property accessors

	

	public int getSid() {
		return this.sid;
	}

	public void setSid(int sid) {
		this.sid = sid;
	}

	public TUser getTUser() {
		return this.TUser;
	}

	public void setTUser(TUser TUser) {
		this.TUser = TUser;
	}

	public String getStageName() {
		return this.stageName;
	}

	public void setStageName(String stageName) {
		this.stageName = stageName;
	}

	

	public Set<TEssay> gettEssaies() {
		return tEssaies;
	}

	public void settEssaies(Set<TEssay> tEssaies) {
		this.tEssaies = tEssaies;
	}

	public int getS_uid() {
		return s_uid;
	}

	public void setS_uid(int s_uid) {
		this.s_uid = s_uid;
	}

	

}
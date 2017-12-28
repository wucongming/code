package cn.jxufe.entity;

import java.util.HashSet;
import java.util.Set;

/**
 * TEssay entity. @author MyEclipse Persistence Tools
 */

public class TEssay implements java.io.Serializable {

	// Fields

	private int eid;
	private TStage tStage;
	private String content;
	private int watchNum;
	private String img;
	private String name;
	private String txt;
	private Integer e_sid;
	private Integer othervisiable = 0;
	private Set<TDiscuss> tDiscuss = new HashSet<TDiscuss>();
	
	public Integer getOthervisiable() {
		return othervisiable;
	}
	public void setOthervisiable(Integer othervisiable) {
		this.othervisiable = othervisiable;
	}
	public Set<TDiscuss> gettDiscuss() {
		return tDiscuss;
	}
	public void settDiscuss(Set<TDiscuss> tDiscuss) {
		this.tDiscuss = tDiscuss;
	}
	public int getEid() {
		return eid;
	}
	public void setEid(int eid) {
		this.eid = eid;
	}
	
	public TStage gettStage() {
		return tStage;
	}
	public void settStage(TStage tStage) {
		this.tStage = tStage;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public int getWatchNum() {
		return watchNum;
	}
	public void setWatchNum(int watchNum) {
		this.watchNum = watchNum;
	}
	public String getImg() {
		return img;
	}
	public void setImg(String img) {
		this.img = img;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getTxt() {
		return txt;
	}
	public void setTxt(String txt) {
		this.txt = txt;
	}
	public Integer getE_sid() {
		return e_sid;
	}
	public void setE_sid(Integer e_sid) {
		this.e_sid = e_sid;
	}
	
	
	// Constructors

}
package cn.jxufe.restful.bean;

import java.util.List;

import cn.jxufe.database.entity.Clazz;

public class ClassResult {

	private int code;
	private String msg;
	private int count;
	private List<Clazz> data;
	public int getCode() {
		return code;
	}
	public void setCode(int code) {
		this.code = code;
	}
	public String getMsg() {
		return msg;
	}
	public void setMsg(String msg) {
		this.msg = msg;
	}
	public int getCount() {
		return count;
	}
	public void setCount(int count) {
		this.count = count;
	}
	public List<Clazz> getData() {
		return data;
	}
	public void setData(List<Clazz> data) {
		this.data = data;
	}
	
	
	
}

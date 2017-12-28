package cn.jxufe.dao.interfaces;

import cn.jxufe.entity.TDiscuss;

public interface DiscussDAO {
	
	public void addDiscuss(TDiscuss discuss);
	
	public TDiscuss findDiscuss(TDiscuss discuss);
	
	public boolean deleteDiscuss(int did);
}

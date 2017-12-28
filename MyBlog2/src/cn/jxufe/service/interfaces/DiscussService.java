package cn.jxufe.service.interfaces;

import cn.jxufe.entity.TDiscuss;

public interface DiscussService {
	
	public void addDiscuss(TDiscuss discuss);
	
	public TDiscuss findDiscuss(TDiscuss discuss);
	
	public boolean deleteDiscuss(int did);
}

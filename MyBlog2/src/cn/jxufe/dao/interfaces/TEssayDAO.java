package cn.jxufe.dao.interfaces;

import cn.jxufe.entity.TEssay;

public interface TEssayDAO {
	
	public boolean addTEssay(TEssay tessay);
	
	public boolean deleteTEssayByEid(int eid);
	
	public TEssay findTEssayByEssayName(String name);
	
	public TEssay findTEssayByEid(int eid);
	
	public TEssay updateEssayContent(int eid,String content);
	
	public boolean updateEssayByEid(TEssay tessay);
	
	public boolean updateEssayVisiable(int eid,int othervisiable);
}

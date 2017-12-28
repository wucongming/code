package cn.jxufe.dao.interfaces;

import cn.jxufe.entity.TUser;

public interface UserDAO {
	
	public TUser login(TUser tuser);
	
	public TUser addUser(TUser tuser);
	
	public TUser findUserByAccount(String account);
}

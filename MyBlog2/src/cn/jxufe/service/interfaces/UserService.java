package cn.jxufe.service.interfaces;

import cn.jxufe.entity.TUser;

public interface UserService {
	
	public TUser login(TUser user);
	
	public TUser addUser(TUser tuser);
	
	public TUser findUserByAccount(String account);
}

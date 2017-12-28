package cn.jxufe.service;

import cn.jxufe.dao.interfaces.UserDAO;
import cn.jxufe.entity.TUser;
import cn.jxufe.service.interfaces.UserService;

public class UserServiceImpl implements UserService {

	private UserDAO userDAO;

	public UserDAO getUserDAO() {
		return userDAO;
	}

	public void setUserDAO(UserDAO userDAO) {
		this.userDAO = userDAO;
	}

	@Override
	public TUser login(TUser user) {
		// TODO Auto-generated method stub
		return userDAO.login(user);
	}

	@Override
	public TUser addUser(TUser tuser) {
		// TODO Auto-generated method stub
		return userDAO.addUser(tuser);
	}

	@Override
	public TUser findUserByAccount(String account) {
		// TODO Auto-generated method stub
		return userDAO.findUserByAccount(account);
	}
	
	
}

package kr.ac.kopo.endingplanner.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.ac.kopo.endingplanner.dao.UserDao;
import kr.ac.kopo.endingplanner.model.Member;

@Service

public class UserServiceImpl implements UserService {
	
	@Autowired
	UserDao dao;
	
	@Override
	public boolean login(Member member) {
		return dao.login(member);
	}
	
	@Override
	public int loginOk(String id, String password) {
		return dao.loginOk(id, password);
	}
}

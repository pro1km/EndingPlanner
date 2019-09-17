package kr.ac.kopo.endingplanner.dao;

import kr.ac.kopo.endingplanner.model.Member;

public interface UserDao {

	boolean login(Member user);

	int loginOk(String id, String password);

}

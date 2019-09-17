package kr.ac.kopo.endingplanner.service;

import kr.ac.kopo.endingplanner.model.Member;

public interface UserService {

	boolean login(Member user);

	int loginOk(String id, String password);


}

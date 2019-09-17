package kr.ac.kopo.endingplanner.service;

import java.util.List;

import javax.servlet.http.HttpSession;

import kr.ac.kopo.endingplanner.model.Member;

public interface SignUpService {

	void add(Member item);

	List<Member> list(Member item);

	void delete(String id);

	Member item(HttpSession session);

	void update(Member item);
	
	int idCheck(String id);

}

package kr.ac.kopo.endingplanner.service;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.ac.kopo.endingplanner.dao.SignUpDao;
import kr.ac.kopo.endingplanner.model.Member;

@Service

public class SignUpServiceImpl implements SignUpService {
	
	@Autowired
	SignUpDao sd;
	
	@Override
	public void add(Member item) {
		sd.add(item);
	}

	@Override
	public List<Member> list(Member item) {
		return sd.list(item);
	}

	@Override
	public void delete(String id) {
		sd.delete(id);
	}

	@Override
	public Member item(HttpSession session) {
		return sd.item(session);
	}

	@Override
	public void update(Member item) {
		sd.update(item);
	}
	

	@Override
	public int idCheck(String id) {
		return sd.idCheck(id);
	}

}

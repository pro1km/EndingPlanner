package kr.ac.kopo.endingplanner.dao;

import java.util.HashMap;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kr.ac.kopo.endingplanner.model.Member;

@Repository

public class UserDaoImpl implements UserDao {

	@Autowired
	SqlSession sql;
	
	@Override
	public boolean login(Member member) {
		if (sql.selectOne("member.login", member) == null)
		
		return false;

	return true;
	}

	@Override
	public int loginOk(String id, String password) {
		Map<String, String> map = new HashMap<String, String>();
		
		map.put("id", id);
		map.put("password", password);
		
		return sql.selectOne("member.loginOk", map);
	}

}

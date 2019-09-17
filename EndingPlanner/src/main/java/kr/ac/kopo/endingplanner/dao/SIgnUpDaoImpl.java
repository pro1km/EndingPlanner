package kr.ac.kopo.endingplanner.dao;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kr.ac.kopo.endingplanner.model.Member;

@Repository

public class SIgnUpDaoImpl implements SignUpDao {
	
	@Autowired
	SqlSession sql;
	
	@Override
	public void add(Member item) {
		sql.insert("member.add",item);
	}

	@Override
	public List<Member> list(Member item) {
		return sql.selectList("member.list",item);
	}

	@Override
	public void delete(String id) {
		sql.delete("member.delete",id);
	}

	@Override
	public Member item(HttpSession session) {
		return sql.selectOne("member.item",session);
	}

	@Override
	public void update(Member item) {
		sql.update("member.update",item);
	}
	
	@Override
	public int idCheck(String id) {
		return sql.selectOne("member.idCheck",id);
	}

}

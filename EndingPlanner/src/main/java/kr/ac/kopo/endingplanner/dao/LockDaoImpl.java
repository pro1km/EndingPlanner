package kr.ac.kopo.endingplanner.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kr.ac.kopo.endingplanner.model.Lock;
import kr.ac.kopo.endingplanner.model.Member;
import kr.ac.kopo.endingplanner.model.Memory;

@Repository
public class LockDaoImpl implements LockDao {

	@Autowired
	SqlSession sql;

	@Override
	public List<Lock> list() {
		return sql.selectList("lock.list");
	}

	@Override
	public void add(Lock item) {
		sql.insert("lock.add", item);
	}

}

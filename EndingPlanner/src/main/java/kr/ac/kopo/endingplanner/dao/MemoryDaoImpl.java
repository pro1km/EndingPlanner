package kr.ac.kopo.endingplanner.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kr.ac.kopo.endingplanner.model.Comment;
import kr.ac.kopo.endingplanner.model.Memory;
import kr.ac.kopo.endingplanner.util.Pager;

@Repository
public class MemoryDaoImpl implements MemoryDao {

	@Autowired
	SqlSession sql;

	@Override
	public List<Memory> list() {
		return sql.selectList("memory.list"); // xml���� �̸�.id
	}

	@Override
	public void add(Memory memory) {
		sql.insert("memory.add", memory);
	}

	@Override
	public void update(Memory memory) {
		sql.update("memory.update", memory);
	}

	@Override
	public Memory getMemoryItem(int memId) {
		return sql.selectOne("memory.getMemoryItem", memId);
	}

	@Override
	public void delete(int memId) {
		sql.delete("memory.delete", memId);
	}

	@Override
	public boolean addComment(Comment comment) {
		// DaoImpl에서는 이렇게 해야한다
		if (sql.insert("memory.addComment", comment) > 0)
			return true;
		return false;
	}

	@Override
	public List<Comment> getComList(int memid) {
		return sql.selectList("memory.getComList", memid);
	}

	@Override
	public boolean delComment(Comment comment) {
		// DaoImpl에서는 이렇게 해야한다
		if (sql.delete("memory.delComment", comment) > 0)
			return true;
		return false;
	}

	@Override
	public int total(Pager pager) {
		int total = sql.selectOne("memory.total", pager);

		return total;
	}

	@Override
	public List<Memory> list(Pager pager) {
		return sql.selectList("memory.list", pager);
	}

}

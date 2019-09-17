package kr.ac.kopo.endingplanner.dao;

import java.util.List;

import kr.ac.kopo.endingplanner.model.Comment;
import kr.ac.kopo.endingplanner.model.Memory;
import kr.ac.kopo.endingplanner.util.Pager;

public interface MemoryDao {

	List<Memory> list();

	void add(Memory memory);

	void update(Memory memory);

	Memory getMemoryItem(int memId);

	void delete(int memId);

	boolean addComment(Comment comment);

	List<Comment> getComList(int memid);

	boolean delComment(Comment comment);

	int total(Pager pager);

	List<Memory> list(Pager pager);

}

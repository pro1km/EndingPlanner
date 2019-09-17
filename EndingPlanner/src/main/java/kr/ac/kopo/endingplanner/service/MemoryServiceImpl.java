package kr.ac.kopo.endingplanner.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.ac.kopo.endingplanner.dao.MemoryDao;
import kr.ac.kopo.endingplanner.model.Comment;
import kr.ac.kopo.endingplanner.model.Memory;
import kr.ac.kopo.endingplanner.util.Pager;
@Service
public class MemoryServiceImpl implements MemoryService {
	
	@Autowired
	MemoryDao memoryDao;

	@Override
	public List<Memory> list() {
		return memoryDao.list();
	}

	@Override
	public void add(Memory memory) {
		memoryDao.add(memory);
		
	}

	@Override
	public void update(Memory memory) {
		memoryDao.update(memory);
	}

	@Override
	public Memory getMemoryItem(int memId) {
		return memoryDao.getMemoryItem(memId);
	}

	@Override
	public void delete(int memId) {
		memoryDao.delete(memId);
	}

	@Override
	public boolean addComment(Comment comment) {
		if(memoryDao.addComment(comment))
			return true;
		return false;
	}

	@Override
	public List<Comment> getComList(int memid) {
		return memoryDao.getComList(memid);
	}

	@Override
	public boolean delComment(Comment comment) {
		return memoryDao.delComment(comment);
	}

	@Override
	public List<Memory> list(Pager pager) {

		int total = (int) memoryDao.total(pager);
		
		pager.setTotal(total);
		
		return memoryDao.list(pager);
	}

}

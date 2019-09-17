package kr.ac.kopo.endingplanner.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.ac.kopo.endingplanner.dao.LockDao;
import kr.ac.kopo.endingplanner.model.Lock;

@Service
public class LockServiceImpl implements LockService {

	@Autowired
	LockDao dao;
	
	@Override
	public List<Lock> list() {
		return dao.list();
	}

	@Override
	public void add(Lock item) {
		dao.add(item);
	}

}

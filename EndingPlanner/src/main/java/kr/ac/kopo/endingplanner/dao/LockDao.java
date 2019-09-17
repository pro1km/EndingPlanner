package kr.ac.kopo.endingplanner.dao;

import java.util.List;

import kr.ac.kopo.endingplanner.model.Lock;

public interface LockDao {

	List<Lock> list();

	void add(Lock item);

}

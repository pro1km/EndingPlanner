package kr.ac.kopo.endingplanner.service;

import java.util.List;

import kr.ac.kopo.endingplanner.model.Lock;

public interface LockService {

	List<Lock> list();

	void add(Lock item);

}

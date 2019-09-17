package kr.ac.kopo.endingplanner.dao;

import java.util.List;

import kr.ac.kopo.endingplanner.model.Photo;

public interface PhotoDao {

	List<Photo> list();

	void add(Photo item);

}

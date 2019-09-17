package kr.ac.kopo.endingplanner.service;

import java.util.List;

import kr.ac.kopo.endingplanner.model.Photo;

public interface PhotoService {

	List<Photo> list();

	void add(Photo item);

}

package kr.ac.kopo.endingplanner.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.ac.kopo.endingplanner.dao.PhotoDao;
import kr.ac.kopo.endingplanner.model.Photo;

@Service
public class PhotoServiceImpl implements PhotoService {

	@Autowired
	PhotoDao dao;

	@Override
	public List<Photo> list() {
		return dao.list();
	}

	@Override
	public void add(Photo item) {
		dao.add(item);
	}

}

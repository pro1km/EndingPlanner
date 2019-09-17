package kr.ac.kopo.endingplanner.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kr.ac.kopo.endingplanner.model.Lock;
import kr.ac.kopo.endingplanner.model.Photo;

@Repository
public class PhotoDaoImpl implements PhotoDao {
	
	@Autowired
	SqlSession sql;
	
	@Override
	public List<Photo> list() {
		return sql.selectList("Photo.list");
	}

	@Override
	public void add(Photo item) {
		sql.insert("Photo.add",item);
	}
}

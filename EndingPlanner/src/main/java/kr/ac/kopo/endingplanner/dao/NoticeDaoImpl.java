package kr.ac.kopo.endingplanner.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kr.ac.kopo.endingplanner.model.Notice;

@Repository
public class NoticeDaoImpl implements NoticeDao {
	
	@Autowired
	SqlSession sql;

	@Override
	public List<Notice> getList() {
		return sql.selectList("notice.getList"); //notice.xml의 getList에 해당하는 sql문 실행
	}

	@Override
	public Notice getNoticeItem(int noticeid) {
		return sql.selectOne("notice.getNoticeItem", noticeid);
	}

}

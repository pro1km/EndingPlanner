package kr.ac.kopo.endingplanner.dao;

import java.util.List;

import kr.ac.kopo.endingplanner.model.Notice;

public interface NoticeDao {

	List<Notice> getList();

	Notice getNoticeItem(int noticeid);

}

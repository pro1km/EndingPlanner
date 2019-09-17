package kr.ac.kopo.endingplanner.service;

import java.util.List;

import kr.ac.kopo.endingplanner.model.Notice;
import kr.ac.kopo.endingplanner.util.Pager;

public interface NoticeService {

	List<Notice> getList();

	Notice getNoticeItem(int noticeid);


}

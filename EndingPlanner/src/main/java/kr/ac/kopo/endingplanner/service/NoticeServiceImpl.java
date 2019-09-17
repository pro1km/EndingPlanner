package kr.ac.kopo.endingplanner.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.ac.kopo.endingplanner.dao.NoticeDao;
import kr.ac.kopo.endingplanner.model.Notice;

@Service
public class NoticeServiceImpl implements NoticeService {
	
	@Autowired
	NoticeDao dao;

	@Override
	public List<Notice> getList() {
		return dao.getList();
	}

	@Override
	public Notice getNoticeItem(int noticeid) {
		return dao.getNoticeItem(noticeid);
	}

}

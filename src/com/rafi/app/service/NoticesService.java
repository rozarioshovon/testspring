package com.rafi.app.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.rafi.app.dao.Notice;
import com.rafi.app.dao.NoticesDAO;

@Service
public class NoticesService {
	
	private NoticesDAO noticesDAO;

	@Autowired
	public void setNoticesDAO(NoticesDAO noticesDAO) {
		this.noticesDAO = noticesDAO;
	}
	
	public List<Notice> getCurrent(){
		return noticesDAO.getNotices();
	}

	public void create(Notice notice) {
		noticesDAO.create(notice);
		
	}

}

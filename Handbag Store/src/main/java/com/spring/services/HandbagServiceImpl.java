package com.spring.services;

	import java.util.List;
	import org.springframework.beans.factory.annotation.Autowired;
	import org.springframework.stereotype.Service;
	import org.springframework.transaction.annotation.Transactional;
	import com.spring.dao.HandbagDao;
	import com.spring.model.Handbag;
	@Service
	public class HandbagServiceImpl implements HandbagServices {

		@Autowired
	private HandbagDao handbagDao;

		public HandbagDao getHandbagDao() {
		return handbagDao;
	}

	public void setHandbagDao(HandbagDao handbagDao) {
		this.handbagDao = handbagDao;
	}
	@Transactional
		public List<Handbag> getAllHandbags() {
			return handbagDao.getAllHandbags();
		}
	public Handbag getHandbagById(int id) {
		return handbagDao.getHandbagById(id);
	}
	@Transactional
	public void deleteHandbag(int id) {
		handbagDao.deleteHandbag(id);
	}

	public void addHandbag(Handbag handbag) {
		handbagDao.addHandbag(handbag);
		}

	public void editHandbag(Handbag handbag) {
		handbagDao.editHandbag(handbag);
		}
	}

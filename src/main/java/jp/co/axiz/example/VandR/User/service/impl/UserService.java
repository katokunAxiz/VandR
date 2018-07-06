package jp.co.axiz.example.VandR.User.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import jp.co.axiz.example.VandR.User.dao.IUserDao;
import jp.co.axiz.example.VandR.User.entity.Reservation;
import jp.co.axiz.example.VandR.User.entity.User;
import jp.co.axiz.example.VandR.User.service.IUserService;

@Service
@Transactional
public class UserService implements IUserService{

	@Autowired
	private IUserDao iUserDao;


	@Override
	public List<User> find(User user) {

		if (user.isConditionsEnpty()) {
			return iUserDao.findAll();
		} else {
			return iUserDao.findByConditions(user);
		}
	}

	@Override
    public User findById(Integer id) {
    	return iUserDao.findById(id);
    }

	@Override
	public void delete(Integer id) {
		iUserDao.delete(id);
	}

	@Override
    public User authentication(Integer id, String password) {
    	return iUserDao.findByIdAndPassword(id, password);
    }


	@Override
	public int reserveInsert (Reservation res) {
		return iUserDao.reserveInsert (res);
	}
}

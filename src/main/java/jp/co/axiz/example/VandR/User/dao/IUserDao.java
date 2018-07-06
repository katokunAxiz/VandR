package jp.co.axiz.example.VandR.User.dao;

import java.util.List;

import jp.co.axiz.example.VandR.User.entity.Reservation;
import jp.co.axiz.example.VandR.User.entity.User;

public interface IUserDao {
	public User findById(Integer id);

	public void delete(Integer id);

	public List<User> findAll();

	public List<User> findByConditions(User user);

	public User findByIdAndPassword(Integer id, String password);
	public int reserveInsert (Reservation res);
}

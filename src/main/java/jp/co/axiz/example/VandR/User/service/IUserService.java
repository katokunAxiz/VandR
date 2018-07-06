package jp.co.axiz.example.VandR.User.service;

import java.util.List;

import jp.co.axiz.example.VandR.User.entity.Reservation;
import jp.co.axiz.example.VandR.User.entity.User;

public interface IUserService {

	public int reserveInsert (Reservation res);

	public List<User> find(User user);

	public User findById(Integer id);

	public void delete(Integer id);

	public User authentication(Integer id, String password);
}

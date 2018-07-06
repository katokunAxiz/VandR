package jp.co.axiz.example.VandR.User.dao.impl;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.namedparam.MapSqlParameterSource;
import org.springframework.jdbc.core.namedparam.NamedParameterJdbcTemplate;
import org.springframework.stereotype.Repository;

import jp.co.axiz.example.VandR.User.dao.IUserDao;
import jp.co.axiz.example.VandR.User.entity.Reservation;
import jp.co.axiz.example.VandR.User.entity.User;

@Repository
public class UserDao implements IUserDao{

	@Autowired
	 private JdbcTemplate jdbcTemplate;

	@Autowired
	 private NamedParameterJdbcTemplate jt;

	@Override
	public List<User> findAll() {
		String sql = "SELECT * FROM alarm ORDER BY user_id;";

		List<User> resultList = jt.query(sql, new BeanPropertyRowMapper<User>(User.class));

		return resultList;
	}

	@Override
	public User findById(Integer id) {
		String sql = "SELECT * FROM user_info WHERE user_id = :userId";
		MapSqlParameterSource param = new MapSqlParameterSource();
		param.addValue("userId", id);

		List<User> resultList = jt.query(sql, param, new BeanPropertyRowMapper<User>(User.class));

		return resultList.isEmpty() ? null : resultList.get(0);
	}

	@Override
	public List<User> findByConditions(User user) {
		List<String> condition = new ArrayList<String>();
		MapSqlParameterSource param = new MapSqlParameterSource();

		String lastname = user.getUserLastName();
		String firstname = user.getUserFirstName();
		String telephone = user.getTelephone();
		String password = user.getPassword();

		if (lastname != null && !lastname.isEmpty()) {
			condition.add("user_lastname = :lastname");
			param.addValue("lastname", lastname);
		}

		if (firstname != null && !firstname.isEmpty()) {
			condition.add("user_firstname = :firstname");
			param.addValue("firstname", firstname);

		}

		if (telephone != null && !telephone.isEmpty()) {
			condition.add("telephone = :telephone");
			param.addValue("telephone", telephone);

		}

		if (password != null && !password.isEmpty()) {
			condition.add("password = :password");
			param.addValue("password", password);

		}

		String whereString = String.join(" AND ", condition.toArray(new String[] {}));

		String sql = "SELECT * FROM user_info WHERE " + whereString + " ORDER BY user_id";

		List<User> resultList = jt.query(sql, param, new BeanPropertyRowMapper<User>(User.class));

		return resultList;
	}

	@Override
	public void delete(Integer id) {

		String sql = "DELETE FROM user_info WHERE user_id = :userId";
		MapSqlParameterSource param = new MapSqlParameterSource();
		param.addValue("userId", id);

		jt.update(sql, param);
	}

	@Override
	public User findByIdAndPassword(Integer id, String password) {
		String sql = "SELECT * FROM user_info WHERE user_id = :userId AND password = :password";
		MapSqlParameterSource param = new MapSqlParameterSource();
		param.addValue("userId", id);
		param.addValue("password", password);

		List<User> resultList = jt.query(sql, param, new BeanPropertyRowMapper<User>(User.class));

		return resultList.isEmpty() ? null : resultList.get(0);
	}


	@Override
	public int reserveInsert (Reservation res) {
		String sql = "INSERT INTO reservation(user_id,vacancy_id,user_name,time,telphone,num) "
				+ "VALUES (?,?,?,?,?,?)";
		return jdbcTemplate.update(sql,res.getUserId(),res.getVacancyId(),res.getUserName(),
				res.getTime(), res.getTelephone(),res.getNum());
	}



}

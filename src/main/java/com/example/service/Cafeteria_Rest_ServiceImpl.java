package com.example.service;

import com.example.dao.Cafeteria_Rest_Dao;
import com.example.model.User;
import org.springframework.stereotype.Service;

import javax.inject.Inject;
import java.util.List;
import java.util.Map;

;

@Service
public class Cafeteria_Rest_ServiceImpl implements Cafeteria_Rest_Service {

	@Inject
	private Cafeteria_Rest_Dao cafeteria_rest_dao;

	public List<User> selectUser() {
		// TODO Auto-generated method stub
		return cafeteria_rest_dao.selectUser();
	}

	@Override
	public User selectUserOne(Map<String, Object> param) {
		// TODO Auto-generated method stub
		return cafeteria_rest_dao.selectUserOne(param);
	}

	@Override
	public int insertUser(User user) {
		// TODO Auto-generated method stub
		return cafeteria_rest_dao.insertUser(user);
	}

	@Override
	public int updateUser(User user) {
		// TODO Auto-generated method stub
		return cafeteria_rest_dao.updateUser(user);
	}

	@Override
	public int delete_user(Map<String, Object> userId) {
		// TODO Auto-generated method stub
		return cafeteria_rest_dao.delete_user(userId);
	}
}


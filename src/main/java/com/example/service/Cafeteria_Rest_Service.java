package com.example.service;

import com.example.model.User;

import java.util.List;
import java.util.Map;

public interface Cafeteria_Rest_Service {
	public List<User> selectUser();

	public User selectUserOne(Map<String, Object> param);

	public int insertUser(User user);

	public int updateUser(User user);

	public int delete_user(Map<String, Object> param);
}


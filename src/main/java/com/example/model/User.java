package com.example.model;

public class User {

	//변수명은 디비의 컬럼명과 같아야한다. 대소문자 상관없음
	private long user_Id;
	private String user_Name;
	private Integer user_age;
	private String user_gender;

	public long getUser_Id() {
		return user_Id;
	}

	public void setUser_Id(long user_Id) {
		this.user_Id = user_Id;
	}

	public String getUser_Name() {
		return user_Name;
	}

	public void setUser_Name(String user_Name) {
		this.user_Name = user_Name;
	}

	public Integer getUser_age() {
		return user_age;
	}

	public void setUser_age(Integer user_age) {
		this.user_age = user_age;
	}

	public String getUser_gender() {
		return user_gender;
	}

	public void setUser_gender(String user_gender) {
		this.user_gender = user_gender;
	}

	@Override
	public String toString() {
		return "User{" +
				"user_Id=" + user_Id +
				", user_Name='" + user_Name + '\'' +
				", user_age=" + user_age +
				", user_gender='" + user_gender + '\'' +
				'}';
	}
}

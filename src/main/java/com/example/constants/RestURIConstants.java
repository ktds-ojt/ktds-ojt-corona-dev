package com.example.constants;

public class RestURIConstants {

	public static final String GET_USER_MAIN = "/user";
	public static final String GET_USER = "/rest/user/{id}/{id2}";
	public static final String GET_ALL_USER = "/rest/users";
	public static final String CREATE_USER = "/rest/user/insert";
	public static final String DELETE_USER = "/rest/user/delete/{id}";
	public static final String UPDATE_USER = "/rest/user/update";

	public static final String SIGNIN_GET_LOGIN = "/login";
	public static final String SIGNIN_GET_API_LOGIN = "/api/login";

	public static final String MAIN_GET_MAIN = "/";
	public static final String MAIN_GET_API_MAIN = "/api/main";

	public static final String DASHBOARD_GET_DASHBOARD_ID = "/dashboard/{id}"; // DISEASE NAME
	public static final String DASHBOARD_GET_API_DASHBOARD_CURSTATE_ID = "/api/dashboard/curstate/{id}"; // CUR_STATE
	public static final String DASHBOARD_GET_API_DASHBOARD_CITYSTATE_ID = "/api/dashboard/citystate/{id}"; // CITY_STATE
	public static final String DASHBOARD_GET_API_DASHBOARD_DISEASE_ID = "/api/dashboard/disease/{id}"; // PATIENT

	public static final String MAP_GET_MAP_ID = "/map/{id}";
	public static final String MAP_GET_API_MAP_PATIENT_ID ="/api/map/patient/{id}";

	public static final String ADMIN_GET_ADMIN = "/admin";



	//1)
	public static final String USERS_POST = "/users";
	//2)
	public static final String USERS_PUT ="/users/{id}";
	//3)
	public static final String USERS_DEL = "/users/{id}";
	//4)
	public static final String USER_GET = "/users";
	//5)
	public static final String USERS_POST_UPDATE = "/users/update";
	//6)
	public static final String USERS_POST_DELETE = "/users/delete";
}

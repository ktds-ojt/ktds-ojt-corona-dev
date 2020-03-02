package com.example.controller;

import com.example.constants.RestURIConstants;
import com.example.model.User;
import com.example.service.SigninPageService;
import com.example.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;

import java.util.List;

import static com.example.constants.RestURIConstants.*;

@Controller
public class UsersController {

    @Autowired
    private UserService userService;

    @RequestMapping(value = "/user", method = RequestMethod.GET)
    public String USER_MAIN () {
        return "userPage";
    }

    @RequestMapping(value = "/api/user/create", method = RequestMethod.POST)
    public @ResponseBody User API_USER_CREATE (@RequestBody User user) {
        user = userService.InsertUser(user);
        return user;
    }

    @RequestMapping(value = "/api/user/read", method = RequestMethod.GET)
    public @ResponseBody List<User> API_USER_GET () {
        List<User> user = userService.SelectUser();
        return user;
    }

    @RequestMapping(value = "/api/user/update", method = RequestMethod.POST)
    public @ResponseBody User API_USER_UPDATE (@RequestBody User user) {
        user = userService.UpdateUser(user);
        return user;
    }

    @RequestMapping(value = "/api/user/delete", method = RequestMethod.POST)
    public @ResponseBody User USER_DELETE (@RequestBody User user) {
        user = userService.DeleteUser(user);
        return user;
    }
};
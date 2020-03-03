package com.example;

import com.example.model.TEST_DB_1;
import com.example.service.UserService;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.context.junit4.SpringRunner;

import java.util.HashMap;
import java.util.List;


@RunWith(SpringRunner.class)
@SpringBootTest
public class DemoTest {
    @Autowired
    private UserService userService;


    @Test
    public void getTest_db_1() {
        List<TEST_DB_1> test_db_1 = userService.SelectTESTDB1();
        System.out.println(test_db_1);
        test_db_1.get(1);
        HashMap<String, Integer> map = test_db_1.get(1);

        System.out.println(map);
        System.out.println(map.get("TEST_DB_USE"));
        System.out.println(map.get("TEST_DB_COST"));
        System.out.println(map.get("TEST_DB_TIME"));
        System.out.println(map.get("TEST_DB_PRICE"));
    }
}

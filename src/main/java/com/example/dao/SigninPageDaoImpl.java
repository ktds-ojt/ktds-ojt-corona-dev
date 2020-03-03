package com.example.dao;

import com.example.model.Admin;
import com.example.model.User;
import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import java.security.MessageDigest;
import java.util.ArrayList;
import java.util.List;

@Repository
public class SigninPageDaoImpl implements SigninPageDao {

    @Autowired
    private SqlSession session;

    public List<Admin> SelectAdmin(Admin admin) throws Exception {
        List<Admin> AdminList = new ArrayList<Admin>();
        AdminList = session.selectList("SignPageSqlMap.SelectAdmin", admin);
        System.out.println(AdminList);
        if (AdminList.size() > 0) {
            String base = admin.getADMIN_LOGIN_ID() + admin.getADMIN_LOGIN_PW() + System.currentTimeMillis();

            System.out.println(base);

            MessageDigest digest = MessageDigest.getInstance("SHA-256");

            byte[] hash = digest.digest(base.getBytes("UTF-8"));
            StringBuffer hexString = new StringBuffer();

            for (int i = 0; i < hash.length; i++) {
                String hex = Integer.toHexString(0xff & hash[i]);
                if(hex.length() == 1) hexString.append('0');
                hexString.append(hex);
            }

            System.out.println(hexString.toString());
            admin.setADMIN_TOKEN(hexString.toString());
            session.update("SignPageSqlMap.UpdateAdmin", admin);
        }
        else{
            throw new Exception("Error");
        }
        AdminList = session.selectList("SignPageSqlMap.SelectAdmin", admin);
        return AdminList;
    }
};
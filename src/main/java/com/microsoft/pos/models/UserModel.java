package com.microsoft.pos.models;

import com.microsoft.pos.config.database.DBManager;
import com.microsoft.pos.config.database.DBWorker;
import com.microsoft.pos.config.database.MySQL;
import com.microsoft.pos.dao.User;

import java.sql.ResultSet;
import java.util.HashMap;
import java.util.Optional;

public class UserModel {
    public User login(String user, String pass) {
        User user1 = new User();
        DBWorker dbManager = (DBManager db) -> {
            db.connect();
            String query = "select * from users where username='" + user + "'  and password='" + pass + "' ";
            ResultSet rs = db.query(query);
            System.out.println(query);
            try {
                if (rs.next()) {
                    user1.setUsername(rs.getString("username"));
                    user1.setPassword(rs.getString("password"));
                    user1.setUserId(rs.getInt("user_id"));
                }
            } catch (Exception e) {
                e.printStackTrace();
            }
        };
        dbManager.connect(new MySQL());

        return user1.getUserId() == null ? null : user1;
    }
}

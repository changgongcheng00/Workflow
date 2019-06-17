package com.activiti.dao;

import com.activiti.entity.Permisssion;
import com.activiti.entity.User;

import java.util.List;

public interface UserDao {
    List<User> list();

    User login(User user);

    List<Permisssion> getPermission(int id);
}

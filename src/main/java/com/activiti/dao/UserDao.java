package com.activiti.dao;

import com.activiti.entity.Permisssion;
import com.activiti.entity.User;
import com.activiti.entity.UserInfo;

import java.util.List;

public interface UserDao {
    List<UserInfo> getUserInfoList();

    User login(User user);

    List<Permisssion> getPermission(int id);
}

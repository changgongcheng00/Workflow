package com.activiti.service;

import com.activiti.entity.Permisssion;
import com.activiti.entity.User;
import com.activiti.entity.UserInfo;

import java.util.List;

public interface UserService {

    User queryById(Long id);

    List<UserInfo> getUserInfoList();

    User login(User user);

    List<Permisssion> getPermission(int id);
}

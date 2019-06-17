package com.activiti.service;

import com.activiti.entity.Permisssion;
import com.activiti.entity.User;

import java.util.List;

public interface UserService {

    User queryById(Long id);

    List<User> list();

    User login(User user);

    List<Permisssion> getPermission(int id);
}

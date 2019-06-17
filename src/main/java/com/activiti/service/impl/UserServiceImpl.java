package com.activiti.service.impl;

import com.activiti.dao.UserDao;
import com.activiti.entity.Permisssion;
import com.activiti.entity.User;
import com.activiti.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * @ClassName UserServiceImpl
 * @Description TODO
 * @Author ch.zhang
 * @Date 2019/6/5 19:15
 **/
@Service
public class UserServiceImpl implements UserService {

    @Autowired
    UserDao userDao;

    @Override
    public User queryById(Long id) {
        return null;
    }

    /**
     * Description 查询用户列表
     * @Date 2019/6/12 15:18
     * @Author zhangcheng
     */
    @Override
    public List<User> list() {
        return userDao.list();
    }

    /**
     * Description 根据登录用户名称获取用户信息
     * @Date 2019/6/12 15:18
     * @Author zhangcheng
     */
    @Override
    public User login(User user) {
        return userDao.login(user);
    }

    /**
     * Description 根据用户id获取用户权限
     * @Date 2019/6/12 15:19
     * @Author zhangcheng
     */
    @Override
    public List<Permisssion> getPermission(int id) {
        return userDao.getPermission(id);
    }
}

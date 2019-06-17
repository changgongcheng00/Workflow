package com.activiti.dao;

import com.activiti.entity.LeaveApply;

/**
 * @ClassName LeaveDao
 * @Description TODO
 * @Author ch.zhang
 * @Date 2019/6/11 20:54
 **/
public interface LeaveDao {

    void save(LeaveApply leaveApply);

    void update(LeaveApply leaveApply);

    LeaveApply get(int id);
}

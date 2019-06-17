package com.activiti.entity;

import lombok.Data;

import java.io.Serializable;

/**
 * @ClassName Role
 * @Description TODO
 * @Author ch.zhang
 * @Date 2019/6/11 18:06
 **/
@Data
public class Role implements Serializable{

    private static final long serialVersionUID = -574414361158397343L;
    /**
     * id
     */
    private int pid;

    /**
     * 角色名称
     */
    private String rolename;
}

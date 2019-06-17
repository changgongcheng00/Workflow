//package com.activiti.configuretion;
//
//import org.activiti.engine.ProcessEngine;
//import org.activiti.engine.ProcessEngineConfiguration;
//import org.activiti.engine.impl.cfg.StandaloneProcessEngineConfiguration;
//import org.springframework.beans.factory.annotation.Autowired;
//import org.springframework.beans.factory.annotation.Qualifier;
//import org.springframework.context.annotation.Bean;
//import org.springframework.context.annotation.Configuration;
//
//import javax.sql.DataSource;
//
///**
// * @ClassName ActivitiConfig
// * @Description 当仅仅使用activiti-engine时，此处手动注入processEngine
// * @Author ch.zhang
// * @Date 2019/6/11 11:08
// **/
//@Configuration
//public class ActivitiConfig {
//
//    @Autowired
//    @Qualifier("dataSource")
//    private DataSource dataSource;
//
//    /**
//     * Description 初始化配置，将创建25张表
//     * processEngineConfiguration
//     * @Author zhangcheng
//     */
//    @Bean
//    public StandaloneProcessEngineConfiguration processEngineConfiguration(){
//        StandaloneProcessEngineConfiguration configuration = new StandaloneProcessEngineConfiguration();
//        configuration.setDataSource(dataSource);
//        configuration.setDatabaseSchemaUpdate(ProcessEngineConfiguration.DB_SCHEMA_UPDATE_TRUE);
//        configuration.setAsyncExecutorActivate(false);
//        return configuration;
//    }
//
//    /**
//     * Description 创建引擎
//     * processEngine
//     * @Author zhangcheng
//     */
//    @Bean
//    public ProcessEngine processEngine(){
//        return processEngineConfiguration().buildProcessEngine();
//    }
//}

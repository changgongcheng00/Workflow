package com.activiti.general;

import com.google.common.collect.Maps;
import org.activiti.engine.*;
import org.activiti.engine.form.FormProperty;
import org.activiti.engine.form.TaskFormData;
import org.activiti.engine.impl.form.DateFormType;
import org.activiti.engine.impl.form.StringFormType;
import org.activiti.engine.repository.Deployment;
import org.activiti.engine.repository.DeploymentBuilder;
import org.activiti.engine.repository.ProcessDefinition;
import org.activiti.engine.runtime.ProcessInstance;
import org.activiti.engine.task.Task;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;
import java.util.Map;
import java.util.Scanner;

/**
 * @ClassName DemoMain
 * @Description Activiti 基本实现
 * @Author ch.zhang
 * @Date 2019/6/6 16:11
 **/
public class DemoMain {

    private static final Logger logger = LoggerFactory.getLogger(DemoMain.class);

    public static void main(String[] args) throws ParseException {
        logger.info("启动");
        //创建流程引擎
        ProcessEngine processEngine = getProcessEngine();
        //部署流程定义文件
        ProcessDefinition processDefinition = getProcessDefinition(processEngine);
        //启动运行流程
        ProcessInstance processInstance = startProcessEngine(processEngine, processDefinition);
        //处理流程任务
        Scanner scanner = new Scanner(System.in);
        while (processInstance != null && !processInstance.isEnded()) {
            TaskService taskService = processEngine.getTaskService();
            List<Task> list = taskService.createTaskQuery().list();
            for (Task task : list) {
                logger.info("待处理任务：{}", task.getName());
                FormService formService = processEngine.getFormService();
                TaskFormData taskFormData = formService.getTaskFormData(task.getId());
                List<FormProperty> formProperties = taskFormData.getFormProperties();
                Map<String, Object> variables = Maps.newHashMap();
                for (FormProperty formProperty : formProperties) {
                    String line = null;
                    if (StringFormType.class.isInstance(formProperty.getType())) {
                        logger.info("请输入{}？", formProperty.getName());
                        line = scanner.nextLine();
                        variables.put(formProperty.getId(), line);
                    } else if (DateFormType.class.isInstance(formProperty.getType())) {
                        logger.info("请输入{}？格式（yyyy-MM-dd）", formProperty.getName());
                        line = scanner.nextLine();
                        SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd");
                        Date date = dateFormat.parse(line);
                        variables.put(formProperty.getId(), date);
                    } else {
                        logger.info("类型暂不支持{}", formProperty.getType());
                    }
                    logger.info("您输入的内容是{}", line);
                }
                taskService.complete(task.getId(), variables);
                processInstance = processEngine.getRuntimeService()
                    .createProcessInstanceQuery()
                    .processInstanceId(processInstance.getId())
                    .singleResult();
            }
            logger.info("待处理任务数量{}", list.size());
        }

        logger.info("结束");
    }

    private static ProcessInstance startProcessEngine(ProcessEngine processEngine, ProcessDefinition processDefinition) {
        RuntimeService runtimeService = processEngine.getRuntimeService();
        ProcessInstance processInstance = runtimeService.startProcessInstanceById(processDefinition.getId());
        logger.info("{}", processInstance.getProcessDefinitionKey());
        return processInstance;
    }

    private static ProcessDefinition getProcessDefinition(ProcessEngine processEngine) {
        RepositoryService repositoryService = processEngine.getRepositoryService();
        DeploymentBuilder deploymentBuilder = repositoryService.createDeployment();
        deploymentBuilder.addClasspathResource("processes/MyProcess.bpmn20.xml");
        Deployment deployment = deploymentBuilder.deploy();
        String deploymentId = deployment.getId();
        ProcessDefinition processDefinition = repositoryService.createProcessDefinitionQuery().deploymentId(deploymentId).singleResult();
        System.out.println("流程定义文件和id:" + processDefinition.getName() + processDefinition.getId());
        return processDefinition;
    }

    private static ProcessEngine getProcessEngine() {
        ProcessEngineConfiguration cfg = ProcessEngineConfiguration.createStandaloneInMemProcessEngineConfiguration();
        ProcessEngine processEngine = cfg.buildProcessEngine();
        String name = processEngine.getName();
        String version = processEngine.VERSION;
        System.out.println(name + version);
        return processEngine;
    }
}

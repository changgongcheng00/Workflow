activity6 流程

1.因为activiti6.0.0是基于springboot1.x开发的，所以不兼容springboot2，
使用springboot集成时需要对源码有所修改。用6.0.0版本的activiti-spring-boot-starter-basic
下载maven库，然后将resource/static/sql目录下的6.0.0-boot2文件解压替换
2.如果远程mysql不能连接，用本地库运行需要执行sql目录下的leaveapply.sql文件
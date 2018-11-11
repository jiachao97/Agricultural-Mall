# Agricultural-Service-Platform
汉中地区特色农业综合服务平台
## 架构  
项目基于三层架构，SpringMVC+Spring+Mybatis搭建  
## 实现功能  
用户登录注册模块，购物车、订单模块，后台管理模块  
## 项目说明  
```
config  
  -SqlMapConfig.xml:Mybatis核心配置文件  
  -applicationContext-dao.xml:配置数据源、Mybatis会话工厂及Mapper扫描  
  -applicationContext-service.xml:配置扫描 @Service  
  -applicationContext-trans.xml:配置事物  
  -jdbc.properties  
  -log4j.properties  
  -resource.properties:存放常量  
  -springmvc.xml:SpringMVC核心配置文件  
```



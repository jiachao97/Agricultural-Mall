# Agricultural-Service-Platform
农业商城项目
## 框架  
项目基于三层架构，由SpringMVC+Spring+Mybatis搭建  
## 实现功能  
用户登录注册模块，购物车、订单模块，后台管理模块  
## 项目说明  
```
config  
    -SqlMapConfig.xml:Mybatis核心配置文件  
    -applicationContext-dao.xml:配置数据源、SqlSessionFactory及Mapper扫描  
    -applicationContext-service.xml:配置扫描@Service  
    -applicationContext-trans.xml:配置事物  
    -jdbc.properties:配置数据库信息  
    -log4j.properties配置日志  
    -resource.properties:存放常量  
    -springmvc.xml:SpringMVC核心配置文件    
src/com/jc  
    -controller:处理器  
        -converter:转换器   
        -interceptor:拦截器  
    -dao:Mapper接口及文件  
    -pojo:实体类  
    -service:业务接口  
        -impl:实现类  
    -utils:工具类  
```  
## 数据库表  
```  
  user:用户表  
  admin:管理员表  
  goods:商品表  
  category:商品分类表  
  orders:订单表  
  orderitem:订单项表  
  supply:供应表  
```

  




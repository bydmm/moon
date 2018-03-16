# We choose to go to the moon

```
moon:
  image: 'registry-internal.cn-shenzhen.aliyuncs.com/iqing/moon:live'
  command:
    - run
  restart: always
  environment:
    - DB_HOST=${DB_HOST}
    - DB_NAME=${DB_NAME}
    - DB_USER=${DB_USER}
    - DB_PW=${DB_PW}
  expose:
    - 8888/tcp
  labels:
    aliyun.latest_image: true
    aliyun.scale: '1'
    aliyun.routing.port_8888: moon.iqing.com
    aliyun.log_store_dbstdout: stdout
```

想改网页代码: http://v3.bootcss.com/

想学怎么写后端代码: https://ruby-china.github.io/rails-guides/

API - rabl的文档: https://github.com/nesquena/rabl

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

# aws-xray-daemon

## Running the X-Ray daemon on Amazon ECS

- Using the official Docker image
```
$ docker pull amazon/aws-xray-daemon
```

- Sample Task Definition
```
    {
      "name": "xray-daemon",
      "image": "amazon/aws-xray-daemon",
      "cpu": 32,
      "memoryReservation": 256,
      "portMappings" : [
          {
              "hostPort": 0,
              "containerPort": 2000,
              "protocol": "udp"
          }
       ],
    }
```

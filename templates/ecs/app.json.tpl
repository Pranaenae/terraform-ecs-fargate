[
  {
    "name": "app",
    "image": "${app_image}",
    "cpu": ${fargate_cpu},
    "memory": ${fargate_memory},
     "logConfiguration": {
        "logDriver": "awslogs",
        "options": {
          "awslogs-group": "/ecs/cb-app",
          "awslogs-region": "${aws_region}",
          "awslogs-stream-prefix": "ecs"
        }
    },   
    "networkMode": "awsvpc",
    "portMappings": [
      {
        "containerPort": ${app_port},
        "hostPort": ${app_port}
      }
    ],
    "secrets": [
      {
        "name": "DB_PASSWORD",
        "valuefrom": "${arn}:password::"
      },
      {
        "name": "DB_USERNAME",
        "valuefrom": "${arn}:username::"
      },
      {
        "name": "DB_HOST",
        "valuefrom": "${arn}:host::"
      },
      {
        "name": "DB_PORT",
        "valuefrom": "${arn}:port::"
      },
      {
        "name": "DB_NAME",
        "valuefrom": "${arn}:dbname::"
      }
    ]
  }
]

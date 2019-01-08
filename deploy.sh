{
    "family": "testing-familia",
    "containerDefinitions": [
        {
            "image": "your-repository/flask-signup:v_%BUILD_NUMBER%",
            "name": "flask-signup",
            "cpu": 10,
            "memory": 256,
            "essential": true,
            "portMappings": [
                {
                    "containerPort": 5000,
                    "hostPort": 80
                }
            ]
        }
    ]
}
{
"taskDefinition": {
    "volumes": [],
    "taskDefinitionArn": "arn:aws:ecs:us-east-1:123456789012:task-definition/flask-signup:1",
    "containerDefinitions": [
        {
            "name": "flask-signup",
            "image": "your-repository/flask-signup:v_0",
            "cpu": 10,
            "portMappings": [
                {
                    "containerPort": 5000,
                    "hostPort": 80
                }
            ],
            "memory": 256,
            "essential": true
        }
    ],
    "family": "flask-signup",
    "revision": 1
}
}

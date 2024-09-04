package templates

import ()



#Instance: {
    objects: [
        {
            apiVersion: "v1"
            kind: "Service"
            metadata: name: "my-service"
            spec: {
                ports: [{
                    port: 80
                    protocol: "TCP"
                    targetPort: 8080
                }]
                selector: app: "my-app"
            }
        },
        {
            apiVersion: "apps/v1"
            kind: "Deployment"
            metadata: name: "my-deployment"
            spec: {
                replicas: 3
                selector: matchLabels: app: "my-app"
                template: {
                    metadata: labels: app: "my-app"
                    spec: containers: [{
                        image: "nginx:1.14.2"
                        name: "my-container"
                        ports: [{
                            containerPort: 8080
                        }]
                    }]
                }
            }
        }
    ]
}

pipeline {
    agent any

    tools {
        nodejs 'nodeJSInstallationName'
    }
      environment {
        DOCKER_IMAGE_Node_File = 'brahim98/devops_project_front:node-file-manager'

    }

    stages {
                
        

stage('Build image node file manager') {
            steps {
                script {
                    // Build the Docker image for the Spring Boot app
                    sh "docker build -t $DOCKER_IMAGE_Node_File ."
                }
            }
        }

        stage('Push image node file manager') {
            steps {
                script {
                    withDockerRegistry([credentialsId: 'docker-hub-creds',url: ""]) {
                        // Push the Docker image to Docker Hub
                        sh "docker push $DOCKER_IMAGE_Node_File"
                    }
                }
            }}




 
         stage('Deployment stage ') {
    steps {
    dir('ansible') {

        sh "sudo ansible-playbook -u root k8s.yml -i inventory/host.yml"
    }

}

}               




    }

}
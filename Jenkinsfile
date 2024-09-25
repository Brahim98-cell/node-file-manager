pipeline {
    agent any

    tools {
        nodejs 'nodeJSInstallationName'
    }
      environment {
        DOCKER_IMAGE_Node_File = 'brahim98/devops_project_front:node-file-manager'

    }

    stages {
                
        
/*
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

*/




         stage('Build and Deploy') {
    steps {
        // Checkout your source code from the version control system if needed

        // Build the Docker images for your Spring Boot backend and Angular frontend

        // Start the application stack using Docker Compose
       // sh "/usr/bin/docker-compose -f compose.yaml up -d"

//   sh " sudo chmod 666 /var/run/docker.sock"

            sh " docker ps -a"



                      sh "docker rm node-file-manager "



        //           sh "docker stop node-file-manager "



      // sh "docker start node-file-manager "

   //     sh "docker logs node-file-manager "



        

   sh   "mkdir -p /usr/src/app/public " 
       
     sh " docker run --name node-file-manager -d -p 7000:7000 -v /usr/src/app/public:/usr/src/app/public brahim98/devops_project_front:node-file-manager"
    }
}
     



    }

}

pipeline{
  agent any
  stages{
       stage ("Build"){
      steps{
        echo "Welcome"
        sh 'whoami'
        sh 'sudo docker pull httpd'
        sh 'ls -ltr'
        sh 'sudo docker build -t httpdimg .'
        sh 'sudo docker image tag httpdimg susigugh/httpdimg:1.3'
        sh 'sudo docker push susigugh/httpdimg:1.3'
        sh 'sudo docker run --name httpdimg1 -d -p 8082:80 susigugh/httpdimg:1.3'
       // sh 'sudo docker stop httpdimg1'
       // sh 'sudo docker rm httpdimg1'
    }
    }
  }
}

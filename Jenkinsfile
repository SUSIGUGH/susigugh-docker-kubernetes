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
        sh 'sudo docker stop httpdimg1'
        sh 'sudo docker rm httpdimg1'
    }
    }
    stage ("Build"){
      steps{
      sh 'chmod 400 jmktsrv01.pem'
      sh 'ls -ltr'
      sh 'ssh -i jmktsrv01.pem ec2-user@3.109.143.71 "ls -ltr"'
      // sh 'scp -i jmktsrv01.pem -o StrictHostKeyChecking=no deployment.yaml ec2-user@3.109.143.71:/home/ec2-user/'
      // sh 'ssh -i jmktsrv01.pem ec2-user@3.109.143.71 "kubectl create -f deployment.yaml"'
  }
}

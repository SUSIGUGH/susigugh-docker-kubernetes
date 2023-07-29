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
      sh 'scp -i susiminikube.pem -o StrictHostKeyChecking=no replicaset.yaml ec2-user@43.204.109.189:/home/ec2-user/'
      sh 'ssh -i susiminikube.pem ec2-user@43.204.109.189 "kubectl create -f replicaset.yaml"'
  }
}

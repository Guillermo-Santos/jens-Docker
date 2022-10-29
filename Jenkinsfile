pipeline {
  agent any
  stages {
    stage('terraform init') {
      agent any
      tool name: 'Terraform', type: 'terraform'
      steps {
        sh 'terraform init'
      }
    }
    stage('terraform build') {
      agent any
      tool name: 'Terraform', type: 'terraform'
      steps {
        sh 'terraform apply --target=module.digital --auto-approve'
      }
    }
  }
}
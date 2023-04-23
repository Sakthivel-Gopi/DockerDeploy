pipeline {
	agent any
		stages {	
			stage ('docker build') {
				steps {
					sh 'docker build -t sakthi0063/docker_deploy .'
				}
			}

			stage ('docker push') {
				steps {
					withCredentials([string (credentialsId: 'SakthiDocker', variable: 'dockerPassword')]) {
							sh "docker login -u sakthi0063 -p${dockerPassword}"
					}
					sh 'docker push sakthi0063/docker_deploy'
				}
			}
		
			stage ('deployment') {
				steps {
					sh 'docker run -itd --name container1 docker_deploy' 
				}
			}
		}
}


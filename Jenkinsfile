pipeline {
	agent any
		stages {	
			stage ('docker build') {
				steps {
					sh 'docker build -t sakthi0063/docker_deploy .'
				}
			}
		
			stage ('deployment') {
				steps {
					sh 'docker run -itd --name container1 docker_deploy' 
				}
			}
		}
}


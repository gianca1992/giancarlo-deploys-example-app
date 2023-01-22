//node block to tell jenkins that all commands inside it runs in an executor reserved for this job

node {

// the variable app is defined and used to point to the docker imaage jenkins will build below 

	def app 
	
//first stage, will checkout scm to tell jenkins to check out the code repo defined for this job and place it within the job workplace 

	stage('Clone repository') {
		checkout scm	
	}

//second stage, jenkins will call docker object (given by the plugin) to build the image example-app from my repo gianca1992 username. 
//once the image is  built it'll put it into the app variable
  
	stage('Build image') {

		app = docker.build('gianca1992/example-app')
	}

//third stage to push the image into the docker hub specifying the dockerhub url and the jenkins credential ID linked to the docker credentials 
 

	stage('Push image'){
		docker.withRegistry('https://registry.hub.docker.com/', 'docker-hub-credentials') {
//to push the image from the app variable to the registry, it will accept as argument the image tag, latest 

		app.push('latest')
	}

	}
}

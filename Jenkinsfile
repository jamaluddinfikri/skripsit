node {
    def app

    stage('Clone repository') {
        /* mengopy repo data */

        checkout scm
    }

    stage('Build image') {
        /* membuat images dari Dockerfile */

        app = docker.build("jamaluddinfikri/skripsit")
    }
    stage('Run image') {
        /* menjalankan images yang telah di buat */

        try {
           sh 'docker run -d -p 80:80 jamaluddinfikri/skripsit'
           sh 'echo "gass"'
       }

    }
    stage('Pust image') {
      /* push images ke docker hub */

      withDockerRegistry([credentialsId: 'DockerHub']) {
       sh "docker push jamaluddinfikri/skripsit:${BUILD_NUMBER}"
    }
  }
}

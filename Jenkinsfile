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

        app.inside {
           sh 'echo "gass"'
       }
       sh 'docker run -d -p 80:80 jamaluddinfikri/skripsit'

    }
    stage('Pust image') {
      /* push images ke docker hub */

       sh "docker push jamaluddinfikri/skripsit:${BUILD_NUMBER}"

  }
}

node {
    def app

    stage('Clone repository') {
        /* mengopy repo data */

        checkout scm
    }

    stage('Build image') {
        /* membuat images dari Dockerfile */

        app = docker.build("jamal008/skripsit")
    }
    stage('Run image') {
        /* menjalankan images yang telah di buat */

        app.inside {
           sh 'echo "gass"'
       }
       sh 'docker run -d -p 80:80 jamal008/skripsit'

    }
    stage('Pust image') {
      /* push images ke docker hub */

      docker.withRegistry('https://registry.hub.docker.com', 'docker-hub-credentials') {
           app.push("${env.BUILD_NUMBER}")
           app.push("latest")
       }

  }
}

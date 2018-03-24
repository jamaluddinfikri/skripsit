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
        sh 'echo test'
        }
    }
}

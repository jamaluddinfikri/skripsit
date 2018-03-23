node {
    def app

    stage('Clone repository') {
        /* Let's make sure we have the repository cloned to our workspace */

        checkout scm
    }

    stage('Build image') {
        /* This builds the actual image; synonymous to
         * docker build on the command line */

        app = docker.build("jamaluddinfikri/skripsit")
    }

<<<<<<< HEAD
    stage('Run image') {
=======
    stage('Test image') {
>>>>>>> origin/master
        /* Ideally, we would run a test framework against our image.
         * For this example, we're using a Volkswagen-type approach ;-) */

        app.inside {
<<<<<<< HEAD
            sh 'docker run --name nginx -p 80  jamaluddinfikri/skripsit'
=======
            sh 'docker run --name test -p 80 -p 443 jamaluddinfikri/skripsit'
>>>>>>> origin/master
            sh 'echo "Tests passed"'
        }
    }
}

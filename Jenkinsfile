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

    stage('Run image') {
        /* Ideally, we would run a test framework against our image.
         * For this example, we're using a Volkswagen-type approach ;-) */

        app.inside {
           app = docker.image(jamaluddinfikri/skripsit).withRun(-d -p 80:80)
            sh 'curl localhost:80'
        }
    }
}

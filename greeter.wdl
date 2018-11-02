version 1.0

task t {
    input {
        String greeting
        String name
    }

    command {
        echo ${greeting} ${name}
    }
}

workflow greet {
    call t
}

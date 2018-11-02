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
    input {
        String greeting
        String name
    }
    call t {
        input:
            greeting=greeting,
            name=name
    }
}

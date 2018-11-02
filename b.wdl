version 1.0

task t {
    input {
        String first
        String second
    }

    command {
        echo ${first} ${second}
    }
}

workflow b {
    input {
        String second
    }
    call t {
        input:
            second = second
    }
}

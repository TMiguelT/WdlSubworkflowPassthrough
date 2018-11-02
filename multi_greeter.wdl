version 1.0

import 'greeter.wdl' as greeter

workflow multi_greeter {
    input {
        Array[String] names
    }

    scatter (name in names){
        call greeter.greet {
            input:
                name = name
        }
    }
}

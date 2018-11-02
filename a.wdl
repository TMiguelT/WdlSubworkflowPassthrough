version 1.0

import 'b.wdl' as sub

workflow w {
    input {
        Array[String] names
    }

    scatter (name in names){
        call sub.b {
            input:
                second = name
        }
    }
}

func swap(integers: inout [String], firstIndex: Int, secondIndex: Int) {
    integers.swapAt(firstIndex, secondIndex) }

func sort() {
    var swapCount = 0
    var totalCount = 0
    var repeatFunc = true
    var words = [String]()

var line = readLine()
while line != nil && line != "" && line != " " {
    words.append(line!)
    line = readLine()
}
 // makes it a mutable value
    


    while(repeatFunc) { // invokes function
        for i in 0 ..< words.count { // i is the number of rounds of checking for swaps
            for k in 1 ..< words.count - i { // inner loop does the actual swapping
                    if words[k] < words[k-1] {
                    repeatFunc = true
                    swapCount += 1
                    totalCount += 1
                    swap(integers: &words, firstIndex: k, secondIndex: k - 1) // swap
                }
            }



            if(swapCount == 0) {
                repeatFunc = false // breaking out of the loops
                break // ending the loops
            }

            swapCount = 0 // reset the swapCount
        }
    }

    print(words)
}

sort() // calling the function 

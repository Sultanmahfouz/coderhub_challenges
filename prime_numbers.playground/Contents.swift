func primesNums(_ array: [Int]) -> [Int] {
    var primeNumbers: [Int] = []

    for number in array{
        if(number == 1 || number == 2){
            primeNumbers.append(number)
        }
        if(number > 2){
            for index in 2...number - 1{
                if(number % index == 0){
                    break
                  }
                if(index == number - 1){
                    primeNumbers.append(number)
                }
            }
        }
    }
  return primeNumbers
}


print(primesNums([12, 4, 44, 89]))

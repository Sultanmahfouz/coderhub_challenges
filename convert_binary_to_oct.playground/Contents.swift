func binToOct(_ b: String) -> Int {
    var decimal: Int = 0
    var binaryNumber = Int(b)
    var octString: String = ""
    var value: Int = 0
    var position: Int = 0
    var multipleOfTwo: Int
    var reminder: Int = 0
    
    repeat{
      value = (binaryNumber ?? 0 ) % 10
        multipleOfTwo = 1
        if(position > 0){
            
            for _ in 0...position - 1{
                
                multipleOfTwo *= 2
            }
            decimal += value * multipleOfTwo
        }else{
            decimal += value
        }
   
   
      position += 1
      binaryNumber = (binaryNumber ?? 10) / 10
    }while (binaryNumber ?? 0) > 0
    
    // convert decimal to oct
    repeat{
        reminder = decimal % 8
        octString.append(String(reminder))
        decimal /= 8
    }while decimal > 0
    
    
    
    return Int(String(octString.reversed())) ?? 0
}

print(binToOct("10011100"))

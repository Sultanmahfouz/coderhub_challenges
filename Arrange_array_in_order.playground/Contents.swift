func sortArray(array: [Int], type: String) -> [Int] {
  
    var output: [Int] = array
    var temp: Int = 0
    
    if(output.isEmpty || output.count == 1){
      return output
    }
    
        for _ in 0...array.count - 1{
          
          for newIndex in 0...array.count - 2{
              
            
            if(type == "S" ? output[newIndex] > output[newIndex + 1] : output[newIndex] < output[newIndex + 1] ){
                  temp = output[newIndex]
                  output[newIndex] = output[newIndex + 1]
                  output[newIndex + 1] = temp
              }
              
          }
          
      }
      
    
    
    return output
  
}

print(sortArray(array: [7,5,1,8,2,18], type: "B"))
print(sortArray(array: [7,5,1,8,2,18], type: "S"))

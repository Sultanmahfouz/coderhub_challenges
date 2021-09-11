func date_format(date: String ) -> String {
    var count: Int = 0
    var yyyy: String = ""
    var mm: String = ""
    var dd: String = ""
    
    for char in date{
        if(char == "-"){ count += 1}
        
        if(char != "-"){
            if(count == 0){
                yyyy.append(char)
            }else if( count == 1 ){
                mm.append(char)
            }else{
                dd.append(char)
            }
        }
    }
    
    return dd + "-" + mm + "-" + yyyy
}

print(date_format(date: "2020-02-02"))

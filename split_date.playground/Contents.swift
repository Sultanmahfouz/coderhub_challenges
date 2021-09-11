func date_format(date: String ) -> String {
    var formattedDate: String = ""
    var count: Int = 0
    var year: String = ""
    var month: String = ""
    var day: String = ""
    
    for char in date{
        if(char == "/"){ count += 1}
        
        if(char != "/"){
            if(count == 0){
                year.append(char)
            }else if( count == 1 ){
                month.append(char)
            }else{
                day.append(char)
            }
        }
        
    }
    formattedDate = year + "/" + month + "/" + day + " | " +
                    year + "-" + month + "-" + day + " | " +
                    month + "/" + day + "/" + year
    return formattedDate
}

print(date_format(date: "2021/9/10"))

#decidimos já entrar com valores padrão, pelo fato da função scan() falhar  em alguns casos  

library(stringr)

str1 = "Hey This java is hot"
str2 = "Java is a new paradigm"

print( paste0("Strings :" , str1, " , ", str2) )

#
    c = 0
    k = 0
    max = 0
    n1 = str_length(str1)
    n2 = str_length(str2)

    for(i in 1:n1) {
        for(j in 1:n2){
            if (substr(str1,i,i) == substr(str2,j,j))
            {
            
                c = 0
                k = 0
                while(k+j < n2)
                {
                    
                    if (substr(str1, k+i,k+i) != substr(str2,k+j,k+j)){
                        break
                    }
                    
                    c = c+ 1
                    k= k +1    
                }

                if (c > max)
                    max = c;
            }
        }
    }

    print(paste0("Maior subsequência comum: " ,max))

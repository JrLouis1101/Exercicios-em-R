library(stringr)
alfabeto<-c("a","b","c","d","e","f","g","h","i","j","k","l","m","n","o","p","q","r","s","t","u","v","x","w","y","z")
print("informe o numero de casos de teste")
n<-scan()
for(i in 1:n)
{
  print("entre com o caso")
  caso<-readline()
  str_to_lower(caso)
  f<-str_count(caso,alfabeto)
  i<-1L
  maior<-0L
  while(!is.na(f[i]))
  {
    if(maior<f[i])
    {
      maior<-f[i]
      aux<-alfabeto[i]
    }else if(maior==f[i])
    {
      aux<-c(aux,alfabeto[i])
    }
    i<-i+1
  }
  print(paste(aux))
}
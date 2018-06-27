n1<-scan()
n2<-scan()
n3<-scan()
n4<-scan()
m<-(n1*2+n2*3+n3*4+n4)/10
print(paste("Media: ",m))
if(m>=7.0){
  print("Aluno aprovado")
}else if(m>=5)
{
  print("Aluno em exame")
  e<-scan()
  print(paste("nota do exame",e))
  if((e+m)/2>5)
    print("ALuno aprovado")
  else
    print("Aluno reprovado")
  print(paste("Media final",(e+m)/2))
}else
  print("aluno reprovado")
  
setClass("no",slots = list(esq = "NULL",dir = "NULL",valor = "numeric"))


insere<-function(v ,no )
{
  if(class(no)=="NULL")
  {
    no<-classesToAM("no")
    print("crie",slot(no,"valor"))
    no<-new("no",esq = NULL,dir = NULL,valor = v)
    print("crie",slot(no,"valor"))
    return()
  }
  else if(v<slot(no,"valor"))
  {
    insere(v,slot(no,"esq"))
  }
  else
  {
    insere(v,slot(no,"dir"))
  }
}
procura<-function(v ,no )
{
  if(class(no)=="NULL")
  {
    print("esse valor nao esta na arvore")
    return()
  }
  else if(v<slot(no,"valor"))
  {
    procura(v,slot(no,"esq"))
  }
  else if(v>slot(no,"valor"))
  {
    procura(v,slot(no,"dir"))
  }
  else
  {
    print("o valor esta na arvore")
    return()
  }
}
entrada<-c(5,1,3,2,80,56,3,36,75,2,4,12)
inicio<-new("no",esq = NULL,dir = NULL ,valor = entrada[1])
for(i in 2:12)
{
  insere(entrada[i],inicio)
}
procura(12,inicio)
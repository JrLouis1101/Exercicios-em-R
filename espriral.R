#decidimos já entrar com valores padrão, pelo fato da função scan() falhar  em alguns casos.

N = 8          # numero de colunas
B = 53         # número de casas

print( paste0("Espiral para: " , N, " Colunas e ", B, " Casas : ") )


ini = 0
fim = N / 2
meio = 0 
X = 0;

  while (ini <= fim)
  {
    meio = (ini + fim) / 2;
    if (4 * meio * (N - meio) < B)
    {
      X = meio;
      ini = meio + 1;
    }
    else
      fim = meio - 1;
  }

resto_feijoes = B - 4 * X * (N - X);
casca = X + 1;
lim = N + (casca - 1) * (-2);
coordX = casca
coordY = casca
resto = 0


if(resto_feijoes >= lim)
{
  resto_feijoes = resto_feijoes- lim;
  coordY =  coordY + (lim - 1);
}  else {

  resto = resto_feijoes %% lim
  coordY = coordY+ (resto - 1);
  resto_feijoes =  resto_feijoes - resto;
}

if(resto_feijoes > 0)
{
  if(resto_feijoes >= lim - 1)
  {
    resto_feijoes = resto_feijoes- (lim - 1);
    coordX = coordX + (lim - 1);
  }
  else
  {
    resto = resto_feijoes %% (lim - 1)
    coordX =  coordX + resto;
    resto_feijoes = resto_feijoes - resto;
  }

  if(resto_feijoes > 0)
  {
    if(resto_feijoes >= lim - 1)
    {
      resto_feijoes = resto_feijoes - (lim - 1);
      coordY = coordY - (lim - 1);
    }
    else
    {
      resto = resto_feijoes %% (lim - 1);
      coordY = coordY -resto;
      resto_feijoes = resto_feijoes - resto;
    }
    
    if(resto_feijoes > 0)
      coordX = coordX- resto_feijoes;
  }
}


print(paste0("L:", coordX, " C:", coordY))
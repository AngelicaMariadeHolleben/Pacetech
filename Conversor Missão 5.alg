algoritmo " conversor da Pacetech"
// Função : Converter a temperatura no horário desejado
// Autor :
// Data : 12/03/2022
//Onde C temperatura em Celsius e F temperatura em Fahrenheit

var
opcaoMenu, opcaoMenu2: literal
entradaC, entradaF, saidaC, saidaF: vetor[1..4] de real
horaLocal: vetor[1..4] de inteiro
i,j: inteiro
aux, aux2, aux3: real

procedimento organizador() //Método bolha para organizar as horas e temperaturas
inicio

para i de 1 ate 4 faca
   para j de 1 ate 4 faca
      se (entTemp[j] > entTemp[i]) entao
         aux <- entTemp[i]
         entTemp[i] <- entTemp[j]
         entTemp[j] <- aux
         aux2 <- saidaTemp[i]
         saidaTemp[i] <- saidaTemp[j]
         saidaTemp[j] <- aux2
         aux3 <- horaCerta[i]
         horaCerta[i] <- horaCerta[j]
         horaCerta[j] <- aux3
      fimse
   fimpara
fimpara
para i de 1 ate 4 faca
   escreval ("Temperatura", entTemp[i], "°C, registrada as", horaLocal[i],"h corresponde a ", saidaTemp[i]:2:2,"°F")
fimpara
fimprocedimento


inicio
repita
   limpatela
   escreval("1 - Converter Celsius para Fahrenheit")
   escreval("2 - Converter Fahrenheit para Celsius")
   escreval("3 - Sair")
   leia(opcaoMenu)
   escolha (opcaoMenu)
   caso "1"
      para i de 1 ate 4 faca
         escreval("Informe a hora local:")
         leia(horaLocal[i])
         escreval("Informe a temperatura em Celsius:")
         leia(entradaC[i])
         saidaF[i] <- ((entradaC[i] * 1.8)+32)
         escreval("A temperatura é de: ",saidaF[i],"°F")
      fimpara

   caso "2"
      para i de 1 ate 4 faca
         escreval("Informe a hora local:")
         leia(horaLocal[i])
         escreval("Informe a temperatura em Fahrenheit:")
         leia(entradaF[i])
         saidaC[i] <- ((entradaF[i] - 32) / 1.8)
         escreval("A temperatura é de: ",saidaC[i],"°C")
      fimpara
   caso "3"
      escreval (" A Pacetech agradece a preferência, tenha um ótimo dia!")
   outrocaso
      escreval ("Opção invalida")
   fimescolha
   escreval("Pressione qualquer tecla para continuar.")
   leia(opcaoMenu2)
ate (opcaoMenu = "3")
fimalgoritmo

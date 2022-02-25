algoritmo "Calculo salarial"

var
salario, aumento, novo_salario: real
inicio
Escreval ("Qual o valor do seu salario?")
Leia (salario)
Escreval ("Digite porcentagem do aumento do seu salario")
Leia (aumento)
novo_salario <- (salario*(aumento/100)) + salario
Escreval ("O salario com aumento é: RS ", novo_salario)

se aumento >= 30  entao
   Escreval ("Estou muito feliz")
senao
   Escreval ("Estou decepcionado")
fimse
fimalgoritmo



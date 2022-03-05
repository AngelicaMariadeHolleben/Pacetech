algoritmo "Conversor moeda e temperatura, viagem aos EUA"
// Função :  Converter Temperatura em Celsius para Fahrrenheit e real em dólar e Vice versa
// Autor :    Angélica Maria de Holleben
// Data : 04/03/2022
// Seção de Declarações 

var
opcaoMenu, teclaEspera: caractere
entradaCelsius, entradaFahrenheit, saidaCelsius, saidaFahrenheit: real
entradaReal, entradaDolar, saidaReal, saidaDolar: real
executarMenu: logico

inicio

executarMenu <- VERDADEIRO

enquanto executarMenu faca

    limpatela
    escreval("Olá, sou o Conversor da Pacetech. Em que posso ajudar ?")
    escreval("Escolha abaixo a opção que desejada e tecle ENTER:")
    escreval("1 - Para converter Celsius para Fahrenheit")
    escreval("2 - Para converter Fahrenheit para Celsius")
    escreval("3 - Para converter Real em Dólar")
    escreval("4 - Para converter Dólar em Real")
    escreval("5 - Sair")
    leia(opcaoMenu)

    escolha opcaoMenu
    caso "1"
       escreval("Informe a temperatura em Celsius e tecle ENTER")
       leia(entradaCelsius)
       saidaFahrenheit <- ((entradaCelsius * 1.8)+32)
       escreval("A temperatura em Fahrenheit é de: ",saidaFahrenheit:2:0," graus.")
    caso "2"
       escreval("Informe a temperatura em Fahrenheit e tecle ENTER")
       leia(entradaFahrenheit)
       saidaCelsius <- ((entradaFahrenheit - 32) / 1.8)
       escreval("A temperatura em Celsius é de: ",saidaCelsius:2:0," graus.")
    caso "3"
       escreval("Informe o valor em Real e tecle ENTER")
       leia (entradaReal)
       saidaDolar <- (entradaReal / 5.20)
       escreval("O valor em Dólar é: US$ ",saidaDolar:6:2)
    caso "4"
       escreval("Informe o valor em Dólar e tecle ENTER")
       leia (entradaDolar)
       saidaReal <- (entradaDolar * 5.20)
       escreval("O valor em Real é: R$ ",saidaReal:6:2)
    caso "5"
       escreval("Obrigada por escolher a Pacetech. Tenha uma ótima e agradável viagem!")
        executarMenu <- FALSO
    outrocaso
        escreval("Opção inválida!")
    fimescolha

    escreval("Pressione ENTER para continuar...")
    leia (teclaEspera)

fimenquanto

fimalgoritmo

programa
{
	inclua biblioteca Util
	
	logico PlaySystem = verdadeiro
	inteiro valorconsulta = 0, qtdconsultas=0,
	valorinternacao=0, qtdinternacoes=0,
	totalarrecadado=0

	//FUNCAO PRINCIPAL
	funcao inicio()
	{
		logico quartos[20]
		para(inteiro i=0;i<20;i++){
			quartos[i]=falso
		}
		
		enquanto(PlaySystem){
			Escolher(quartos)	
		}
	}
	
	//OTHER FUNCTIONS
	
	funcao Escolher(logico &quarts[]){
		
		escreva("\nHOSPITAL - XPTO\n")
		escreva("------------------------------\n")
		escreva("[1] - Consulta Ambulatorial\n")
		escreva("[2] - Internação\n")
		escreva("[3] - Listar Quartos\n")
		escreva("[4] - Faturamento\n")	
		escreva("[5] - Sair do Programa\n")
		escreva("------------------------------\n")
		escreva("\nEscolha uma opcao\n")
		inteiro opcao
		leia(opcao)

		escolha(opcao){
			caso 1: 
				Consulta()
				pare
			caso 2:
				Internacao(quarts)
				pare
			caso 3:
				ListarQuartos(quarts)
				pare
			caso 4:
				Faturamento()
				pare
			caso 5:
				PlaySystem = falso
				pare
		}
	}
	
	funcao Consulta(){
		cadeia nome, telefone, tipoconsulta
		
		escreva("Digite o nome do paciente\n")
		leia(nome)
		escreva("Digite o telefone do paciente\n")
		leia(telefone)
		escreva("Digite o tipo da consulta\n")
		leia(tipoconsulta)

		se(tipoconsulta=="pediatria"){
			valorconsulta+=150
		}senao{
			valorconsulta+=120
		}
		qtdconsultas++
		totalarrecadado+=valorconsulta
		VoltarMenu()
		Util.aguarde(1000)
	}
	
	funcao Internacao(logico &quart[]){
		cadeia nome, telefone
		inteiro numquarto
		escreva("Digite o nome do paciente\n")
		leia(nome)
		escreva("Digite o telefone do paciente\n")
		leia(telefone)
		escreva("Escolha o numero do quarto [0 : 19]\n")
		leia(numquarto)
		se(numquarto >= 0 e numquarto <20){
			se(quart[numquarto]==falso){
				escreva("Quarto reservado com Sucesso!\n")
				quart[numquarto]=verdadeiro
				valorinternacao+=500
				qtdinternacoes++
				totalarrecadado+=valorinternacao
			}senao{
				escreva("Quarto ocupado!\n")
			}
		}senao{
			escreva("Esse quarto não existe\n")
		}
		VoltarMenu()
		Util.aguarde(1000)
		
	}
	
	funcao ListarQuartos(logico &quart[]){
		limpa()
		inteiro j=1
		para(inteiro i=0;i<20;i++){
			se(quart[i] == falso){
				escreva("nº["+i+"] vazio \t")
			}senao{
				escreva("nº["+i+"] ocupado\t")
			}
			se(j==5){
					escreva("\n")
					j=0
			} j++
		}escreva("\n")
		VoltarMenu()
		Util.aguarde(1000)
	}
	funcao Faturamento(){
		escreva("Quantidade de Consultas: " + qtdconsultas + "\n")
		escreva("Quantidade de internacoes: " + qtdinternacoes + "\n")
		escreva("Faturamento de R$ " + valorconsulta + ",00 em consultas\n")
		escreva("Faturamento de R$ " + valorinternacao + ",00 em internacoes\n")
		escreva("Total arrecadado de R$ " + totalarrecadado + ",00\n")
		VoltarMenu()
		Util.aguarde(1000)
	}
	funcao VoltarMenu(){
		escreva("\n\n")
		Util.aguarde(1000)
		cadeia voltar_menu
		escreva("Deseja voltar para o menu?[s/n]\n")
		leia(voltar_menu)
		se(voltar_menu=="s" ou voltar_menu=="S")
			escreva("Voltando")
			
		senao{
			escreva("Saindo\n")
			PlaySystem=falso
		}
		limpa()
	}
}

/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 2318; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */
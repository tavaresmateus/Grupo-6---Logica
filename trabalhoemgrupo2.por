programa
{
	inclua biblioteca Util --> u
	
	funcao inicio()
	{
		inteiro entrada,vagas[31]
		logico bool = verdadeiro
		para(inteiro i=1;i<31;i++){
			vagas[i]=0
		}
		enquanto(bool){
			
			escreva("----------------------------\n")
			escreva("[1] - Entrada de veiculo\n")
			escreva("[2] - Saida de veiculo\n")
			escreva("[3] - Listar Vagas\n")
			escreva("[4] - Sair do Programa\n")
			escreva("----------------------------\n")
			leia(entrada)

			escolha(entrada){
			caso 1:
				EntradaVeiculos(vagas)
				pare
			caso 2:
				SaidaVeiculos(vagas)
				pare
			caso 3:
				ListarVagas(vagas)
				pare
			caso 4:
				bool = falso
				pare
			caso contrario:
				escreva("Entrada desconhecida\n")
				pare
		}
		}
		
	}
	funcao EntradaVeiculos(inteiro &vagas[]){
		inteiro vaga
		escreva("Escolha a vaga\n")
		leia(vaga)
		se(vaga > 0 e vaga < 31){
			se(vagas[vaga] ==0){
				escreva("Carro Estacionado\n")
				vagas[vaga] = 1
			}senao{
				escreva("Vaga ocupada\n")
			}
		}senao{
			escreva("Digite uma vaga válida\n")
		} u.aguarde(1000)
		limpa()
		
		
	}
	funcao SaidaVeiculos(inteiro &vagas[]){
		inteiro vaga
		escreva("Qual vaga deseja desocupar?\n")
		leia(vaga)
		se(vaga > 0 e vaga < 31){
			se(vagas[vaga] ==1){
				escreva("Vaga desocupada\n")
				vagas[vaga] = 0
			}senao{
				escreva("Esta vaga não está ocupada\n")
			}
		}senao{
			escreva("Digite uma vaga válida\n")
		}
		u.aguarde(1000)
		limpa()
	}
	funcao ListarVagas(inteiro &vagas[]){
		inteiro j=1
		
		para(inteiro i=1;i<31;i++){
			escreva(vagas[i] + "\t")
			// listar coluna de 10
			se(j==10){
				escreva("\n")
				j=0
			}
			j++
			u.aguarde(100)
		}
		//escreva("Pressiona alguma tecla para continuar\n")
		
		
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 1487; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */
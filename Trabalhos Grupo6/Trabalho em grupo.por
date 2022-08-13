programa
{
	inclua biblioteca Util
	
	funcao inicio()
	{
		inteiro cinema[10][12], assentoLinha, assentoColuna, reservas=0
		 para(inteiro i=0; i < 10; i++){
		 	para(inteiro j=0; j < 12; j++){
				cinema[i][j] = 0
				escreva(cinema[i][j], " ")	 	
		 	}
		 escreva("\n")	
	 }
	 faca{
			
			escreva("\nDigite a fileira e a coluna do assento: ", "\n")
			leia(assentoLinha, assentoColuna)
			escreva("\n")
			limpa()
			se(assentoLinha > 10 ou assentoColuna>12){
				escreva("Assento nao existe!")
			}
			se(assentoColuna<0 ou assentoLinha<0){
				escreva("Voce saiu do progama!")
				pare
				
			}senao se(assentoLinha<10 e assentoColuna<12){
				se(cinema[assentoLinha][assentoColuna] ==1){
				escreva("Assento ocupado", "\n")
				}
			cinema[assentoLinha][assentoColuna]=1
			
		
			para(inteiro i=0; i < 10; i++){
				para(inteiro j=0; j < 12; j++){
					escreva(cinema[i][j]+" ")

		        }
		        escreva("\n")
		      }		
			
			
		}
	 }enquanto(reservas<=120 e assentoLinha>=0 e assentoColuna>=0)
	}	

}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 252; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */
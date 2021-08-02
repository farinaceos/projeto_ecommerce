programa
{
		const inteiro NUMERO_PRODUTOS = 10
		
		real valores[NUMERO_PRODUTOS]       
		inteiro estoques[NUMERO_PRODUTOS]  
		cadeia produtos[NUMERO_PRODUTOS]    
		cadeia codigos[NUMERO_PRODUTOS]     
		inteiro contadorEstoque = 0
		caracter compraAtiva = 'S'
		logico codigoExiste
		cadeia codigoDonnut = ""
		
		
		
	funcao inicio()
	{		
		
		montarDados()
		
		faca {
			escreva("Deseja fazer compras? [S/N]:")
			leia(compraAtiva)
			
			se (verficarCompraAtiva()) {
				
				vitrine()
				escreva("\nEscreva o código ou o nome do produto desejado: ")
				leia(codigoDonnut)				
				se (verificarCodigo(codigoDonnut)) {
					escreva("produto existente \n")
				} senao {
					escreva("produto não existe \n")

					
				}
				
			} senao {			
				limpa()
				escreva("ATE LOGO")
			}			
		} enquanto (verficarCompraAtiva())
	}

	
	
	funcao logico verificarCodigo(cadeia valorDigitado) {
		para(inteiro x=0;x<10;x++){
			se(valorDigitado == produtos[x] ou valorDigitado == codigos[x]){
				retorne verdadeiro
			}										
		}
		
		retorne falso
	}

	funcao logico verficarCompraAtiva() {
		se (compraAtiva == 's' ou compraAtiva == 'S') {
			retorne verdadeiro
		} senao {
			retorne falso
		}
	}

	
	/*funcao notaFisca() {
		retorne 0
	}

	funcao carrinhoCompras() {
		retorne 0	
	}*/

	

	funcao comprar(inteiro indice, inteiro qtd) {
		estoques[indice] -= qtd		
	}

	funcao montarDados() {
		produtos[0] = "DONNUT NUTELLA"			
		produtos[1] = "DONNUT NINHO"			
		produtos[2] = "DONNUT COCO"			
		produtos[3] = "DONNUT CHOCO"			
		produtos[4] = "DONNUT KIT KAT"			
		produtos[5] = "DONNUT CREME"			
		produtos[6] = "DONNUT CHURROS"			
		produtos[7] = "DONNUT GELEIA"			
		produtos[8] = "DONNUT MORANGO"			
		produtos[9] = "DONNUT FRUTAS"
					
					
					//*** INSERÇÃO DOS VALORES NO VETOR DE PREÇOS
		valores[0] = 12.00
		valores[1] = 15.00
		valores[2] = 16.00
		valores[3] = 13.00
		valores[4] = 12.00
		valores[5] = 13.00
		valores[6] = 10.00
		valores[7] = 10.00
		valores[8] = 12.00
		valores[9] = 11.00

		para(inteiro x=0;x<10;x++){
			estoques[x]=(10)
		}
		para(inteiro x=0;x<10;x++){   //Laço de Repetição para calcular o Código dos produtos
			codigos[x]=("g1"+ (x +1)) //Grupo 1 - g1 ou G1 O código deve ser simples pois o produto pode ser pedido por ele
		}
		
		
	}

	funcao vitrine(){
		
					
		escreva("\nCOD\tSABORES DONNUT'S\tVALOR\t\tESTOQUE\n\n")	//CABEÇALHO DE VENDA


		para(inteiro x=0;x<10;x++){
									escreva(codigos[x], "\t", produtos[x],"\t\tR$ ", valores[x],"\t\t", (estoques[x] - contadorEstoque),"\n")
		}
	}
}

/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 2024; 
 * @DOBRAMENTO-CODIGO = [114];
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */
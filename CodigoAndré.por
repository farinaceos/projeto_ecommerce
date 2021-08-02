programa
{
		const inteiro NUMERO_PRODUTOS = 10
		
		real valores[NUMERO_PRODUTOS]       //Vetor dos preços dos produtos na loja
		inteiro estoques[NUMERO_PRODUTOS]  //Vetor do estoque dos produtos (devem ser 10 segundo pedido na tarefa)
		cadeia produtos[NUMERO_PRODUTOS]    //Vetor dos produtos exibidos na loja
		cadeia codigos[NUMERO_PRODUTOS]     //Vetor dos codigos dos produtos exibidos na loja
		caracter compraAtiva = 'S'
		logico codigoExiste
		cadeia codigoDonnut = ""
		inteiro quantidade = 0
		inteiro contadorEstoque = 0
		
		
		
	funcao inicio()
	{		
		
		montarDados()
		
		
		faca {
			escreva("Deseja fazer compras? [S ou N]\n")
			leia(compraAtiva)
			
			se (verficarCompraAtiva()) {
				escreva("\n***CARRINHO***\n\n")
				vitrine()
				escreva("\n \t       Quais Donnut's deseja comprar? (escreva o código do produto) \n")
				leia(codigoDonnut)				
				se (verificarCodigo(codigoDonnut)) {
					escreva("produto existente \n")
				} senao {
					escreva("produto não existe \n")
				}
			escreva("Quantos unidades deseja comprar?")
			leia(quantidade)
				
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
		
					
		escreva("COD\tSABORES DONNUT'S\tVALOR\t\tESTOQUE\n\n")


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
 * @POSICAO-CURSOR = 1074; 
 * @DOBRAMENTO-CODIGO = [59, 58, 66, 95, 98, 70, 104];
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */
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
	caracter sn = 's'
	
	funcao inicio()
	{
		montarDados()
		inicioDaLoja()
		
		se(sn == 'S' ou sn == 's'){
			vitrine()
			escreva("Digite o código do produto desejado: ")
			leia(codigoDonnut)
				
			para(inteiro x = 0; x<NUMERO_PRODUTOS;x++){
				se(codigoDonnut == codigos[x]){
				escreva("Confirma o Donnut: ", codigos[x], " - ", produtos[x], "- R$", valores[x],"?[S/N]")
				leia(sn)
				se(sn == 'S' ou sn == 's'){
					escreva("\nInforme a quantidade desejada: ")
					leia(quantidade)
				}
				senao{
				
					inicioDaLoja()
				}
				}
			}

		}
		senao{
			finalDaLoja()
		}
	}
					
				
	
		
		
	
	
	funcao inicioDaLoja(){
		escreva("DESEJA FAZER COMPRAS? [S/N]\n")		
		leia(sn)	
	}
	funcao finalDaLoja(){
		escreva("Agradecemos a sua preferência! Volte Sempre!")
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
	}
	funcao vitrine(){
		
					
		escreva("\nCOD\tSABORES DONNUT'S\tVALOR\t\tESTOQUE\n\n")	//CABEÇALHO DE VENDA
		para(inteiro x=0;x<10;x++){
			estoques[x]=(10)
			codigos[x]=("g1"+ (x +1))
			escreva(codigos[x], "\t", produtos[x],"\t\tR$ ", valores[x],"\t\t", (estoques[x] - contadorEstoque),"\n")
		}
		
		
	}
		
	
	
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 1099; 
 * @DOBRAMENTO-CODIGO = [53, 57, 60, 85];
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */
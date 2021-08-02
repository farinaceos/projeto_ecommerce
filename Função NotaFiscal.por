programa
{
	
	funcao inicio()
	{
		real formaDePagamento
		real valorfinal = 100.00
		real valortotal = 0.0
		
		escreva("Métodos de pagamento: ")
		escreva("\n1 - À vista com 10% de desconto -")
		escreva("\n2 - No cartão de crédito em 1x (10% de acréscimo)")
		escreva("\n3 - No cartão de crédito em 2x (15% de acréscimo)")
		escreva("\n4 Cancelar compra.")
		escreva("Por favor, informe a forma de pagamento [1/2/3/4]: ")
		
		leia (formaDePagamento)
			se(formaDePagamento == 1){
				limpa()
				escreva("*** NOTA FISCAL *** \n\n")
				escreva("\nValor total do produto: R$", valorfinal)
				escreva("\nImpostos sobre nota: R$",valorfinal*0.09)
				escreva("\nValor do desconto: R$", valorfinal*0.1)
				valortotal = valorfinal - valorfinal*0.1
				escreva("\nValor Total a pagar: R$" , valortotal)
				escreva("Obrigado pela preferência!")
				
			}
			se(formaDePagamento == 2){
				limpa()
				escreva("*** NOTA FISCAL *** \n\n")
				escreva("\nValor total do produto: R$", valorfinal)
				escreva("\nImpostos sobre a nota: R$",valorfinal*0.09)
				escreva("\nValor do acréscimo: R$", valorfinal*0.1)
				valortotal = valorfinal + valorfinal*0.1
				escreva("\nValor Total a pagar: R$" , valortotal)
				escreva("Obrigado pela preferência!")
				
			}
			se(formaDePagamento == 3){
				limpa()
				escreva("*** NOTA FISCAL *** \n\n")
				escreva("\nValor total do produto: R$", valorfinal)
				escreva("\nImpostos sobre a nota: R$",valorfinal*0.09)
				escreva("\nValor do acréscimo: R$", valorfinal*0.15)
				valortotal = valorfinal + valorfinal*0.15
				escreva("\nValor total da parcela: Duas parcelas de R$", valortotal/2)
				escreva("\nValor Total a pagar: R$" , valortotal)
				escreva("Obrigado pela preferência!")
				
			}	
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 1740; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */
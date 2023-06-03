programa
{
	inclua biblioteca Texto --> txt
	inclua biblioteca Tipos --> tps
	inclua biblioteca Arquivos --> arq
	inclua biblioteca Util --> u
	
	cadeia nomeArq, perguntas[100][7]
	inteiro arq, gCont = 0, gCont2 = 0, acertos, erros, qtd
	
	funcao inicio()
	{
		lerArquivo()

		se(gCont2 == 0)
		{
			escreva("==================================================")
			escreva("\n=================   Q  U  I  Z   =================")
			escreva("\n==================================================\n")
			pausar()
			
			gCont2++
		}
		
		menu()		
	}

	//Função menu do jogo, lista todos os temas presentes.
	funcao menu()
	{
		inteiro tema, resp
			
		faca	
		{
			escreva("==================================================")
			escreva("\n=================   M  E  N  U   =================")
			escreva("\n==================================================")
			escreva("\n==================================================")
			escreva("\n===                   TEMAS                    ===")
			escreva("\n==================================================")
			escreva("\n=== (1)  - Geografia.......................... ===")
			escreva("\n=== (2)  - História........................... ===")
			escreva("\n=== (3)  - Ciência............................ ===")
			escreva("\n=== (4)  - Esportes........................... ===")
			escreva("\n=== (5)  - Arte............................... ===")
			escreva("\n=== (6)  - Literatura......................... ===")
			escreva("\n=== (7)  - Música............................. ===")
			escreva("\n=== (8)  - Filmes............................. ===")
			escreva("\n=== (9)  - Tecnologia......................... ===")
			escreva("\n=== (10) - Cultura Geral...................... ===")
			escreva("\n=== (0) - Sair................................ ===")
			escreva("\n==================================================\n")
			escreva("==================================================\n")
			escreva("==================================================\n")
			escreva("\nEscolha uma opção: ")
			leia(tema)

			se(tema < 0 ou tema > 10)
			{
				limpa()
				escreva("Opção inválida!\n")
				escreva("Escolha uma opção válida!\n")
				pausar()
			}
			
			se(tema > 0 e tema < 10)
			{
				se(tema != 0)
				{
					escreva("Quantidade de perguntas: ")
					leia(qtd)

					se(qtd < 5 ou qtd > 10)
					{
						limpa()
						escreva("Quantidade de perguntas inválida!\n")
						escreva("A quantidade de perguntas deve ser no mínimo 5 e no máximo 10!\n")
						pausar()
					}
				}	
			}
			senao
			{
				qtd = 5
			}
				
			limpa()
			acertos = 0
			erros = 0	
		} enquanto(tema < 0 ou tema > 10 ou qtd < 5 ou qtd > 10)

		escolha(tema)
			{
				caso 0:
					limpa()
					escreva("==================================================")
					escreva("\n=============   G A M E   O V E R    =============")
					escreva("\n==================================================\n")
					pare
				
				caso 1:
					gCont = 0
					jogo()
					menu()
					pare

				caso 2:
					gCont = 10
					jogo()
					menu()
					pare

				caso 3:
					gCont = 20
					jogo()
					menu()
					pare

				caso 4:
					gCont = 30
					jogo()
					menu()
					pare

				caso 5:
					gCont = 40
					jogo()
					menu()
					pare

				caso 6:
					gCont = 50
					jogo()
					menu()
					pare

				caso 7:
					gCont = 60
					jogo()
					menu()
					pare

				caso 8:
					gCont = 70
					jogo()
					menu()
					pare

				caso 9:
					gCont = 80
					jogo()
					menu()
					pare

				caso 10:
					gCont = 90
					jogo()
					menu()
					pare
			}
		
		retorne
	}

	//Carrega todas as perguntas, alternativas e respostas
	//Exibe no final todas as perguntas feitas, alternativas corretas e alternativas escolhidas
	funcao jogo()
	{	
		inteiro cont, cont2 = 0, resp[10]
		inteiro tPerguntas[10] = {0, 0, 0, 0, 0, 0, 0, 0, 0, 0}, sort
		logico verifica = falso
		
		para(cont = gCont; cont < (gCont + qtd); cont++)
		{	
			faca
			{
				sort = u.sorteia(gCont, ((gCont + qtd) - 1))

				se(sort == tPerguntas[0])
				{
					verifica = falso
				}
				senao se(sort == tPerguntas[1])
				{
					verifica = falso
				}
				senao se(sort == tPerguntas[2])
				{
					verifica = falso
				}
				senao se(sort == tPerguntas[3])
				{
					verifica = falso
				}
				senao se(sort == tPerguntas[4])
				{
					verifica = falso
				}
				senao se(sort == tPerguntas[5])
				{
					verifica = falso
				}
				senao se(sort == tPerguntas[6])
				{
					verifica = falso
				}
				senao se(sort == tPerguntas[7])
				{
					verifica = falso
				}
				senao se(sort == tPerguntas[8])
				{
					verifica = falso
				}
				senao se(sort == tPerguntas[9])
				{
					verifica = falso
				}
				senao
				{
					verifica = verdadeiro
					tPerguntas[cont2] = sort
				}
			}enquanto(verifica != verdadeiro)
			
			faca
			{	
				se(cont == (gCont + 9))
				{
					escreva("----------------\n")
					escreva("- ", (cont2 + 1),"ª Pergunta -\n")
					escreva("----------------\n\n")
				}
				senao
				{
					escreva("---------------\n")
					escreva("- ", (cont2 + 1),"ª Pergunta -\n")
					escreva("---------------\n\n")
				}

				escreva(perguntas[sort][0], "\n\n")
				escreva("(1) - ", perguntas[sort][3], "\n")
				escreva("(2) - ", perguntas[sort][4], "\n")
				escreva("(3) - ", perguntas[sort][5], "\n")
				escreva("(4) - ", perguntas[sort][6], "\n\n")
				escreva("Resposta: ")
				leia(resp[cont2])

				se(resp[cont2] != 1 e resp[cont2] != 2 e resp[cont2] != 3 e resp[cont2] != 4)
				{
					limpa()
					escreva("Alternativa Inválida!\n")
					escreva("Escolha uma alternativa válida!\n")
					pausar()
				}
			} enquanto(resp[cont2] != 1 e resp[cont2] != 2 e resp[cont2] != 3 e resp[cont2] != 4)

			se(resp[cont2] == tps.cadeia_para_inteiro(perguntas[sort][2], 10))
			{
				acertos++
				limpa()
			}
			senao
			{
				erros++
				limpa()
			}

			cont2++
		}

		para(cont = 0; cont < cont2; cont++)
		{
			sort = tPerguntas[cont]
			
			se(cont == (cont2 - 1))
				{
					escreva("----------------\n")
					escreva("- ", (cont + 1), "ª Pergunta -\n")
					escreva("----------------\n\n")
				}
				senao
				{
					escreva("---------------\n")
					escreva("- ", (cont + 1), "ª Pergunta -\n")
					escreva("---------------\n\n")
				}
			
			escreva(perguntas[sort][0], "\n\n")
			escreva("Alternativa correta: \n")
			
			se(tps.cadeia_para_inteiro(perguntas[sort][2], 10) == 1)
			{
				escreva("(1) - ", perguntas[sort][3], "\n\n")
			}
			senao se(tps.cadeia_para_inteiro(perguntas[sort][2], 10) == 2)
			{
				escreva("(2) - ", perguntas[sort][4], "\n\n")
			}
			senao se(tps.cadeia_para_inteiro(perguntas[sort][2], 10) == 3)
			{
				escreva("(3) - ", perguntas[sort][5], "\n\n")
			}
			senao
			{
				escreva("(4) - ", perguntas[sort][6], "\n\n")
			}
			
			escreva("Alternativa escolhida: \n")
			
			se(resp[cont] == 1)
			{
				escreva("(1) - ", perguntas[sort][3], "\n\n\n")
			}
			senao se(resp[cont] == 2)
			{
				escreva("(2) - ", perguntas[sort][4], "\n\n\n")
			}
			senao se(resp[cont] == 3)
			{
				escreva("(3) - ", perguntas[sort][5], "\n\n\n")
			}
			senao
			{
				escreva("(4) - ", perguntas[sort][6], "\n\n\n")
			}
			
			gCont++
		}

		escreva("------------------------------\n")
		escreva("Quantidade de acertos.......", acertos, "\n")
		escreva("Quantidade de erros.........", erros, "\n")
		escreva("------------------------------\n\n")
		pausar()
		
		retorne	
	}

	//Carrega o arquivo QUIZ.txt e armazena-o na matriz perguntas;
	//Separa o conteúdo presente do arquivo para cada coluna da matriz.
	funcao lerArquivo()
	{	
		cadeia quiz[100]
		inteiro cont, tam, linha = 1
		inteiro inter, pos1, pos2, pos3, pos4, pos5, pos6
		
		arq = arq.abrir_arquivo("./QUIZ.txt", arq.MODO_LEITURA)
		
		para(cont = 0; cont < 100; cont++)
		{
			quiz[cont] = arq.ler_linha(arq)
			tam = txt.numero_caracteres(quiz[cont])
			inter = txt.posicao_texto("?", quiz[cont], 0)
			pos1 = txt.posicao_texto("|", quiz[cont], inter)
			pos2 = txt.posicao_texto("|", quiz[cont], (pos1 + 1))
			pos3 = txt.posicao_texto("|", quiz[cont], (pos2 + 1))
			pos4 = txt.posicao_texto("|", quiz[cont], (pos3 + 1))
			pos5 = txt.posicao_texto("|", quiz[cont], (pos4 + 1))
			pos6 = txt.posicao_texto("|", quiz[cont], (pos5 + 1))
			perguntas[cont][0] = txt.extrair_subtexto(quiz[cont], 0, (inter + 1))
			perguntas[cont][1] = txt.extrair_subtexto(quiz[cont], (pos1 + 2), (pos2 - 1))
			perguntas[cont][2] = txt.extrair_subtexto(quiz[cont], (pos2 + 2), (pos3 - 1))
			perguntas[cont][3] = txt.extrair_subtexto(quiz[cont], (pos3 + 2), (pos4 - 1))
			perguntas[cont][4] = txt.extrair_subtexto(quiz[cont], (pos4 + 2), (pos5 - 1))
			perguntas[cont][5] = txt.extrair_subtexto(quiz[cont], (pos5 + 2), (pos6 - 1))
			perguntas[cont][6] = txt.extrair_subtexto(quiz[cont], (pos6 + 2), tam)
		}

		arq.fechar_arquivo(arq)

		retorne
	}

	//Pausa a tela quando necessário e a limpa
	funcao pausar()
 	{	
		cadeia paginas
 		
 		escreva("\n\nTecle algo para continuar...")
 		leia(paginas)
 		limpa()

 		retorne
 	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 215; 
 * @DOBRAMENTO-CODIGO = [10, 28, 166, 341, 375];
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = {tPerguntas, 170, 10, 10};
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */
programa
{
    funcao inicio()
    {
        inteiro senha
        inteiro opcao
        inteiro votosHerbert = 0
        inteiro votosRibeiro = 0
        inteiro votosBarone = 0
        inteiro votosBidu = 0
        inteiro votosMonteiro = 0
        inteiro votosJoaoFera = 0
        inteiro votosBrancoPrefeito = 0
        inteiro votosNuloPrefeito = 0
        inteiro votosBrancoVereador = 0
        inteiro votosNuloVereador = 0

        // Solicita a senha de acesso
        enquanto (senha != 2411)
        {
            escreva("Digite a senha de acesso: ")
            leia(senha)
        }

        // Menu de opções
        enquanto (verdadeiro)
        {
            escreva("Digite 1 para iniciar a votação ou 0 para encerrar a votação: ")
            leia(opcao)

            se (opcao == 0)
            {
                // Exibe os resultados
                escreva("Votação encerrada.\n")
                escreva("Votos para Prefeito:\n")
                escreva("Herbert: ", votosHerbert, "\n")
                escreva("Ribeiro: ", votosRibeiro, "\n")
                escreva("Branco: ", votosBrancoPrefeito, "\n")
                escreva("Nulo: ", votosNuloPrefeito, "\n")

                escreva("Votos para Vereador:\n")
                escreva("Barone: ", votosBarone, "\n")
                escreva("Bidu: ", votosBidu, "\n")
                escreva("Monteiro: ", votosMonteiro, "\n")
                escreva("João Fera: ", votosJoaoFera, "\n")
                escreva("Branco: ", votosBrancoVereador, "\n")
                escreva("Nulo: ", votosNuloVereador, "\n")

                // Determina o prefeito eleito
                se (votosHerbert > votosRibeiro)
                {
                    escreva("Prefeito eleito: Herbert\n")
                }
                senao
                {
                    escreva("Prefeito eleito: Ribeiro\n")
                }

                // Determina o vereador mais votado
                se (votosBarone >= votosBidu e votosBarone >= votosMonteiro e votosBarone >= votosJoaoFera)
                {
                    escreva("Vereador mais votado: Barone\n")
                }
                senao se (votosBidu >= votosBarone e votosBidu >= votosMonteiro e votosBidu >= votosJoaoFera)
                {
                    escreva("Vereador mais votado: Bidu\n")
                }
                senao se (votosMonteiro >= votosBarone e votosMonteiro >= votosBidu e votosMonteiro >= votosJoaoFera)
                {
                    escreva("Vereador mais votado: Monteiro\n")
                }
                senao
                {
                    escreva("Vereador mais votado: João Fera\n")
                }

                pare
            }

            // Coleta os votos
            se (opcao == 1)
            {
                inteiro votoPrefeito
                inteiro votoVereador

                escreva("Vote para Prefeito (90 para Herbert, 95 para Ribeiro, 0 para Branco, 99 para Nulo): ")
                leia(votoPrefeito)
                se (votoPrefeito == 90)
                {
                    votosHerbert++
                }
                senao se (votoPrefeito == 95)
                {
                    votosRibeiro++
                }
                senao se (votoPrefeito == 0)
                {
                    votosBrancoPrefeito++
                }
                senao se (votoPrefeito == 99)
                {
                    votosNuloPrefeito++
                }

                escreva("Vote para Vereador (90000 para Barone, 90999 para Bidu, 95000 para Monteiro, 95999 para João Fera, 0 para Branco, 99 para Nulo): ")
                leia(votoVereador)
                se (votoVereador == 90000)
                {
                    votosBarone++
                    // Implementação extra: a cada 3 votos de Barone, transfere 1 para Bidu
                    se (votosBarone % 3 == 0)
                    {
                        votosBarone--
                        votosBidu++
                        escreva("Voto de Barone adulterado e transferido para Bidu.\n")
                    }
                }
                senao se (votoVereador == 90999)
                {
                    votosBidu++
                }
                senao se (votoVereador == 95000)
                {
                    votosMonteiro++
                }
                senao se (votoVereador == 95999)
                {
                    votosJoaoFera++
                }
                senao se (votoVereador == 0)
                {
                    votosBrancoVereador++
                }
                senao se (votoVereador == 99)
                {
                    votosNuloVereador++
                }
            }
        }
    }
}

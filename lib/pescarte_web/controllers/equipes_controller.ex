defmodule PescarteWeb.EquipesController do
  use PescarteWeb, :controller

  def show(conn, _params) do
    current_path = conn.request_path

    data =
      [
        %{
          nucleo: "A",
          linhas_pesquisa: [
            %{
              numero: 1,
              titulo: """
                Antropologia Visual aplicada à investigação de memórias, identidades e fazeres artesanais entre 
                Comunidades Pesqueiras interlocutoras do Projeto Ambiental PESCARTE              
              """,
              descricao: """
                O objetivo da linha é investigar questões referentes às identidades e expressões culturais 
                das comunidades tradicionais de pesca artesanal. O foco de discussão são as expressões do 
                patrimônio imaterial, produzidas a partir do ponto de vista de seus mestres(as), mediadores 
                culturais e realizadores, a fim de que esses se reconheçam e compreendam suas especificidades 
                e possíveis articulações culturais, estéticas, políticas e econômicas. A pesquisa se articula 
                ao PEA Pescarte, elegendo a Antropologia Visual como campo teórico- metodológico capaz de 
                contribuir com o levantamento de dados científicos qualitativos que se somam aos achados 
                estatísticos que demonstram a existência de um grande acervo cultural a ser identificado, 
                registrado e necessitado de políticas públicas que permitam sua continuidade, sendo os dados 
                dos censos um descritor dos achados pretendidos nesta pesquisa qualitativa. 
              """,
              colaboradores: [
                %{
                  nome: "Lilian Sagio Cezar",
                  equipe: "Doutora, UENF - Campos dos Goytacazes",
                  imagem: "",
                  lider: true
                },
                %{
                  nome: "João Vitor Alves Dias",
                  equipe: "Graduando, UENF - Campos dos Goytacazes",
                  imagem: "",
                  lider: false
                },
                %{
                  nome: "Tomás Gabriel de Almeida Araujo",
                  equipe: "Graduando, UENF - Campos dos Goytacazes",
                  imagem: "",
                  lider: false
                },
                %{
                  nome: "Wesley  Valentim Silva Faria",
                  equipe: "Graduando, UENF - Campos dos Goytacazes",
                  imagem: "",
                  lider: false
                },
                %{
                  nome: "Julia Pinheiro Laurentino",
                  equipe: "Graduando, UENF - Campos dos Goytacazes",
                  imagem: "",
                  lider: false
                }
              ]
            },
            %{
              numero: 2,
              titulo: """
                Saberes e fazeres tradicionais das comunidades pesqueiras litorâneas da Região dos Lagos 
                a partir do Projeto PESCARTE              
              """,
              descricao: """
                Propõe-se realizar um inventário participativo das produções ligadas à cultura pesqueira. 
                Em consonância ao tópico do diagnóstico participativo, (iii) identificar e caracterizar 
                potencialidades socioambientais, a pesquisa parte do princípio de que é a partir da valorização 
                dos sujeitos como produtores de culturas, de valores materiais e imateriais que podemos pensar 
                temas como respeito, autonomia, criação e autocriação. O reconhecimento dos sujeitos como agentes 
                formadores implica no reconhecimento do patrimônio cultural e de suas tradições, dessa forma, 
                a linha de pesquisa auxilia na identificação e caracterizar os sujeitos prioritários da ação 
                educativa e concentra-se nos saberes da gastronomia.
              """,
              colaboradores: [
                %{
                  nome: "Giovane NaN do Nascimento",
                  equipe: "Doutor, UENF - Campos dos Goytacazes",
                  imagem: "",
                  lider: true
                },
                %{
                  nome: "Andreza Muniz Teixeira",
                  equipe: "Graduanda, IFF - Cabo Frio",
                  imagem: "",
                  lider: false
                },
                %{
                  nome: "Victor Muniz Thomas",
                  equipe: "Graduando, UFF - Niterói",
                  imagem: "",
                  lider: false
                },
                %{
                  nome: "Yasmim Sousa de Oliveira ",
                  equipe: "Graduando, IFF - Cabo Frio",
                  imagem: "",
                  lider: false
                }
              ]
            },
            %{
              numero: 3,
              titulo: """
                Trabalho e Organização Produtiva: um estudo sobre a inserção feminina na cadeia produtiva do 
                pescado
              """,
              descricao: """
                Busca investigar a participação feminina na atividade pesqueira artesanal não só como uma 
                alternativa de subsistência, fonte de trabalho e renda para inúmeras famílias em todo o país, 
                mas, também, visa compreender a atuação da mulher neste universo de invisibilização e 
                desvalorização de seu trabalho indagando, justamente, sobre as amarras sociais que geram 
                as questões de invisibilidade, da identidade social, perpassando pelos processos de gênero 
                relacionadas ao trabalho da mulher na pesca artesanal, bem como os fatores históricos que 
                contribuem para essa invisibilização. A pesquisa analisa ainda, as relações de trabalho das 
                pescadoras artesanais em municípios do PEA-Pescarte, comparando, a partir de dados qualitativos 
                e quantitativos, semelhanças e diferenças entre os municípios e considerando os impactos da 
                exploração de petróleo e gás natural.
              """,
              colaboradores: [
                %{
                  nome: "Shirlena  Campos de Souza Amaral",
                  equipe: "Doutora, UENF - Campos dos Goytacazes",
                  imagem: "",
                  lider: true
                },
                %{
                  nome: "Luísa  Linhares Mora da Silva ",
                  equipe: "Graduando, UCAM - Campos dos Goytacazes",
                  imagem: "",
                  lider: false
                },
                %{
                  nome: "Fernanda Pacheco da Silva Huguenin",
                  equipe: "Doutora, UENF - Campos dos Goytacazes",
                  imagem: "",
                  lider: false
                }
              ]
            },
            %{
              numero: 6,
              titulo: """
                JUSTIÇA AMBIENTAL: O Problema da Distribuição dos Custos e Benefícios da Exploração do 
                Petróleo para as Comunidades Pesqueiras da Bacia de Campos              
              """,
              descricao: """
                Pretende compreender o respeito próprio ou autoestima como um dos bens mais importantes numa 
                justa distribuição dos benefícios alcançados pela produção da riqueza da sociedade atual. 
                A pesquisa tem por objetivos específicos: fortalecer a organização social das comunidades 
                pesqueiras; fortalecer o sentimento de autoestima e a consciência do próprio valor entre os 
                membros das comunidades pesqueiras, evidenciando a originalidade e autenticidade de sua cultura 
                e modo de vida, em colaboração com as linhas 01, 02, 03 e 14.
              """,
              colaboradores: [
                %{
                  nome: "Eliana Crispim França Luquetti",
                  equipe: "Doutora, UENF - Campos dos Goytacazes",
                  imagem: "",
                  lider: true
                },
                %{
                  nome: "Shirlena Campos de Souza Amaral",
                  equipe: "Doutora, UENF - Campos dos Goytacazes",
                  imagem: "",
                  lider: false
                }
              ]
            },
            %{
              numero: 12,
              titulo: """
                Memórias, Devoções e Sobrevivência na vida Pesqueira: histórias, hábitos e trabalho em comunidades do Norte Fluminense              
              """,
              descricao: """
                Em parceria com as linhas de pesquisa 1 e 2, busca, com base nos eixos conceituais da memória, 
                das devoções religiosas e do trabalho, entender os meios que permitiriam a retomada destas 
                vivências culturais nas comunidades pesqueiras, permitindo, dessa forma que esses elementos
                possam ser integrados em uma matriz de aplicação que pretende reforçar os aspectos relacionais 
                que são os elementos centrais de qualquer organização social. Todos esses elementos são 
                considerados como ponto de partida para as análises, no sentido de construir, de maneira 
                mais eficaz, os instrumentos metodológicos, possibilitando o incentivo à retomada de vivências 
                culturais das comunidades pesqueiras  Ao registrar e resgatar essas práticas culturais, 
                busca-se inseri-las de forma pedagógica nos processos de ensino-aprendizagem do PEA PESCARTE 
                e buscando fortalecer os laços entre os pescadores.
              """,
              colaboradores: [
                %{
                  nome: "Leandro Garcia Pinho",
                  equipe: "Doutor, UENF - Campos dos Goytacazes",
                  imagem: "",
                  lider: true
                },
                %{
                  nome: "Clarissa Menezes de Souza Poubel",
                  equipe: "Doutoranda, UENF - Campos dos Goytacazes",
                  imagem: "",
                  lider: false
                },
                %{
                  nome: "Evandro Francisco Marques Vargas",
                  equipe: "Pós Doutorado, UENF - Campos dos Goytacazes",
                  imagem: "",
                  lider: false
                },
                %{
                  nome: "Eduardo NaN Moreira",
                  equipe: "Doutorando, UENF - Campos dos Goytacazes",
                  imagem: "",
                  lider: false
                }
              ]
            },
            %{
              numero: 13,
              titulo: """
                Conflitos Ambientais e Pescadores Artesanais: uma análise comparada entre a zona costeira do 
                Rio de Janeiro e do Rio Grande do Sul              
              """,
              descricao: """
                A linha tem grande importância para a atualização do diagnóstico participativo, uma vez que 
                propõe a sistematização de conflitos ambientais presentes nos municípios de abrangência do 
                PEA PESCARTE, por meio da metodologia de mapeamento de conflitos e com apoio da equipe de 
                campo do PEA Pescarte. Parte do fato de que os conflitos ambientais são considerados 
                constitutivos da sociedade atual e deflagram o acesso desigual ao ambiente, bem como,
                aos impactos e riscos ambientais gerados devido a sua apropriação. Eles revelam uma reação, 
                por parte de determinados grupos sociais, quando ameaçada sua forma de vida. Assim, os 
                conflitos ambientais envolvendo pescadores artesanais constituem-se elementos norteadores 
                da ação coletiva e tornam-se relevantes como temas geradores dos processos formativos 
                associados ao PEA PESCARTE, especialmente em relação à degradação ambiental e diminuição 
                da produtividade. 
              """,
              colaboradores: [
                %{
                  nome: "Fernanda Pacheco da Silva Huguenin",
                  equipe: "Doutora, UENF - Campos dos Goytacazes",
                  imagem: "",
                  lider: true
                },
                %{
                  nome: "Tatiana NaN Walter",
                  equipe: "Doutora, FURG - São Lourenço do Sul",
                  imagem: "",
                  lider: false
                }
              ]
            },
            %{
              numero: 14,
              titulo: """
                LÍNGUA E IDENTIDADE DE PESCADORES Assumindo a expressão linguística como patrimônio cultural 
                e afirmação ideológica             
              """,
              descricao: """
                A língua possuí papel legitimador de identidade de falantes nos contextos social, cultural, 
                político e interativo. Normalmente, os sujeitos não se dão conta da dimensão que assume a 
                sua língua nesses contextos. Quando se trata de grupos ou indivíduos segregados, integrantes 
                de comunidades tradicioanais ou distantes de comunidades urbanas, tendem a desclassificar 
                tanto o seu papel decisório e participativo, quanto sua expressão linguística, por julgá-la 
                incorreta, inferior e marginal. A ação de sujeitos participantes dos processos decisórios 
                começa quando estes se assumem na sua importância de legítimos usuários de uma variante da 
                língua portuguesa em igualdade de condições de prestígio com as demais. Nessa direção, a 
                linha de pesquisa visa, por meio de entrevistas e oficinas, resgatar, criar e desenvolver 
                junto a comunidades de pescadores o orgulho de sua expressão linguística.
              """,
              colaboradores: [
                %{
                  nome: "Sérgio Arruda de Moura",
                  equipe: "Doutor, UENF - Campos dos Goytacazes",
                  imagem: "",
                  lider: true
                }
              ]
            }
          ]
        },
        %{
          nucleo: "B",
          linhas_pesquisa: [
            %{
              numero: 1,
              titulo: """

              """,
              descricao: """
              """,
              colaboradores: [
                %{
                  nome: "Lilian Sagio Cezar",
                  equipe: "Doutora, UENF - Campos dos Goytacazes",
                  lider: true
                }
              ]
            },
            %{
              numero: 1,
              titulo: """

              """,
              descricao: """
              """,
              colaboradores: [
                %{
                  nome: "Lilian Sagio Cezar",
                  equipe: "Doutora, UENF - Campos dos Goytacazes",
                  lider: true
                }
              ]
            },
            %{
              numero: 1,
              titulo: """

              """,
              descricao: """
              """,
              colaboradores: [
                %{
                  nome: "Lilian Sagio Cezar",
                  equipe: "Doutora, UENF - Campos dos Goytacazes",
                  lider: true
                }
              ]
            },
            %{
              numero: 1,
              titulo: """

              """,
              descricao: """
              """,
              colaboradores: [
                %{
                  nome: "Lilian Sagio Cezar",
                  equipe: "Doutora, UENF - Campos dos Goytacazes",
                  lider: true
                }
              ]
            },
            %{
              numero: 1,
              titulo: """

              """,
              descricao: """
              """,
              colaboradores: [
                %{
                  nome: "Lilian Sagio Cezar",
                  equipe: "Doutora, UENF - Campos dos Goytacazes",
                  lider: true
                }
              ]
            },
            %{
              numero: 1,
              titulo: """

              """,
              descricao: """
              """,
              colaboradores: [
                %{
                  nome: "Lilian Sagio Cezar",
                  equipe: "Doutora, UENF - Campos dos Goytacazes",
                  lider: true
                }
              ]
            },
            %{
              numero: 1,
              titulo: """

              """,
              descricao: """
              """,
              colaboradores: [
                %{
                  nome: "Lilian Sagio Cezar",
                  equipe: "Doutora, UENF - Campos dos Goytacazes",
                  lider: true
                }
              ]
            }
          ]
        },
        %{
          nucleo: "C",
          linhas_pesquisa: [
            %{
              numero: 1,
              titulo: """

              """,
              descricao: """
              """,
              colaboradores: [
                %{
                  nome: "Lilian Sagio Cezar",
                  equipe: "Doutora, UENF - Campos dos Goytacazes",
                  lider: true
                }
              ]
            },
            %{
              numero: 1,
              titulo: """

              """,
              descricao: """
              """,
              colaboradores: [
                %{
                  nome: "Lilian Sagio Cezar",
                  equipe: "Doutora, UENF - Campos dos Goytacazes",
                  lider: true
                }
              ]
            },
            %{
              numero: 1,
              titulo: """

              """,
              descricao: """
              """,
              colaboradores: [
                %{
                  nome: "Lilian Sagio Cezar",
                  equipe: "Doutora, UENF - Campos dos Goytacazes",
                  lider: true
                }
              ]
            },
            %{
              numero: 1,
              titulo: """

              """,
              descricao: """
              """,
              colaboradores: [
                %{
                  nome: "Lilian Sagio Cezar",
                  equipe: "Doutora, UENF - Campos dos Goytacazes",
                  lider: true
                }
              ]
            },
            %{
              numero: 1,
              titulo: """

              """,
              descricao: """
              """,
              colaboradores: [
                %{
                  nome: "Lilian Sagio Cezar",
                  equipe: "Doutora, UENF - Campos dos Goytacazes",
                  lider: true
                }
              ]
            },
            %{
              numero: 1,
              titulo: """

              """,
              descricao: """
              """,
              colaboradores: [
                %{
                  nome: "Lilian Sagio Cezar",
                  equipe: "Doutora, UENF - Campos dos Goytacazes",
                  lider: true
                }
              ]
            },
            %{
              numero: 1,
              titulo: """

              """,
              descricao: """
              """,
              colaboradores: [
                %{
                  nome: "Lilian Sagio Cezar",
                  equipe: "Doutora, UENF - Campos dos Goytacazes",
                  lider: true
                }
              ]
            }
          ]
        },
        %{
          nucleo: "D",
          linhas_pesquisa: [
            %{
              numero: 1,
              titulo: """

              """,
              descricao: """
              """,
              colaboradores: [
                %{
                  nome: "Lilian Sagio Cezar",
                  equipe: "Doutora, UENF - Campos dos Goytacazes",
                  lider: true
                }
              ]
            },
            %{
              numero: 1,
              titulo: """

              """,
              descricao: """
              """,
              colaboradores: [
                %{
                  nome: "Lilian Sagio Cezar",
                  equipe: "Doutora, UENF - Campos dos Goytacazes",
                  lider: true
                }
              ]
            },
            %{
              numero: 1,
              titulo: """

              """,
              descricao: """
              """,
              colaboradores: [
                %{
                  nome: "Lilian Sagio Cezar",
                  equipe: "Doutora, UENF - Campos dos Goytacazes",
                  lider: true
                }
              ]
            },
            %{
              numero: 1,
              titulo: """

              """,
              descricao: """
              """,
              colaboradores: [
                %{
                  nome: "Lilian Sagio Cezar",
                  equipe: "Doutora, UENF - Campos dos Goytacazes",
                  lider: true
                }
              ]
            },
            %{
              numero: 1,
              titulo: """

              """,
              descricao: """
              """,
              colaboradores: [
                %{
                  nome: "Lilian Sagio Cezar",
                  equipe: "Doutora, UENF - Campos dos Goytacazes",
                  lider: true
                }
              ]
            },
            %{
              numero: 1,
              titulo: """

              """,
              descricao: """
              """,
              colaboradores: [
                %{
                  nome: "Lilian Sagio Cezar",
                  equipe: "Doutora, UENF - Campos dos Goytacazes",
                  lider: true
                }
              ]
            },
            %{
              numero: 1,
              titulo: """

              """,
              descricao: """
              """,
              colaboradores: [
                %{
                  nome: "Lilian Sagio Cezar",
                  equipe: "Doutora, UENF - Campos dos Goytacazes",
                  lider: true
                }
              ]
            }
          ]
        }
      ]

    render(conn, :show, current_path: current_path, data: data, error_message: nil)
  end
end

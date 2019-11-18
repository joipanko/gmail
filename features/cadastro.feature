#language: pt

Funcionalidade: Login de usuário

Possibilidade do usuário
Realizar Login no sistema

Contexto: Gmail

Dado que o usuário esteja na página de Acesso

Cenario: Login simples
    Quando informo os dados
    |email                      |  testeautored@gmail.com  |

    E informo a senha
    |senha                      |  123456teste             |

    Então usuário vê a seguinte mensagem: "Bem-vinda, teste teste"






### `README.pt-BR.md` (Português)

```markdown
**Português** | [ English ](README.md)

# Jogo de Adivinhação em Assembly (CESAR)

Uma aplicação em Assembly de baixo nível desenvolvida para o computador hipotético CESAR, utilizando o montador Daedalus. O programa implementa um jogo de adivinhação interativo onde o jogador deve identificar 4 objetos diferentes com base em dicas sequenciais.

![Assembly](https://img.shields.io/badge/Assembly-Baixo--Nível-blue?style=flat-square)
![Architecture](https://img.shields.io/badge/Arquitetura-CESAR-orange?style=flat-square)
![Simulator](https://img.shields.io/badge/Simulador-Daedalus-green?style=flat-square)

## Funcionalidades

- **Entrada Interativa via Teclado:** Lê caracteres diretamente dos registradores de teclado do CESAR, permitindo digitação em tempo real.
- **Edição de Entrada:** Suporta `Enter` para enviar a resposta e `Backspace` para apagar caracteres.
- **Sistema de Dicas Sequenciais:** Exibe até 4 dicas para cada objeto (Banana, Elefante, Relógio e Pinguim), avançando automaticamente em caso de erro.
- **Validação de Resposta:** Compara a entrada do usuário com a resposta correta caractere por caractere usando endereçamento de memória.
- **Sistema de Pontuação Dinâmico:** Bonifica conforme a dica utilizada (+4, +3, +2, +1) e subtrai 1 ponto por resposta incorreta após esgotar as dicas.
- **Exibição de Pontuação Final:** Calcula e exibe a pontuação total, suportando valores negativos.

## Mapeamento de E/S e Memória

| Recurso | Endereço | Descrição |
| :--- | :--- | :--- |
| **Status do Teclado** | `65498` | Verifica a disponibilidade de entrada no teclado |
| **Dados do Teclado** | `65499` | Lê o caractere inserido |
| **Memória de Vídeo** | `65500` | Endereço inicial do display |
| **Resposta do Usuário** | `40000` | Armazena a resposta digitada pelo jogador |
| **Dicas da Banana** | `5000–5300` | Armazena as 4 dicas da Banana |
| **Dicas do Elefante** | `6000–6300` | Armazena as 4 dicas do Elefante |
| **Dicas do Relógio** | `7000–7300` | Armazena as 4 dicas do Relógio |
| **Dicas do Pinguim** | `8000–8300` | Armazena as 4 dicas do Pinguim |
| **Mensagem de Pontuação** | `9000` | Armazena a mensagem de placar final |
| **Respostas (Banana, Elefante, Relógio, Pinguim)** | `10000`, `10100`, `10200`, `10300` | Armazena as respostas corretas |

## Conceitos de Baixo Nível Aplicados

- Manipulação de registradores (`R0`–`R5`) para controle de pontuação, tratamento de caracteres e ponteiros de memória.
- Endereçamento indireto de memória para leitura de dicas, entradas e respostas corretas.
- E/S mapeada em memória (Memory-Mapped I/O) para teclado e display.
- Manipulação de caracteres ASCII para comparação de strings e exibição na tela.
- Desvios condicionais (`BEQ`, `BNE`, `BGE`) para controle de fluxo do jogo.
- Endereçamento de palavras de 16 bits, incrementando ponteiros para acessar caracteres consecutivos.
- Operações de complemento de dois (`NOT`, `ADD`) para tratamento de pontuações negativas.
- Operações aritméticas e subtrações sucessivas para conversão de dígitos decimais.
- Implementação de fluxo de controle linear.

## Como Executar

1. Abra o ambiente do montador e simulador **Daedalus**.
2. Carregue o código-fonte em Assembly no editor.
3. Realize a montagem (assemble) do programa usando o Daedalus.
4. Carregue e execute o código de máquina gerado no simulador CESAR.
5. Utilize o teclado virtual do simulador para digitar suas respostas.

## Estrutura do Projeto

```text
.
├── guessing_game.asm   # Código-fonte principal em Assembly
├── README.md           # Documentação em Inglês
└── README.pt-BR.md     # Documentação em Português

# Processador MIPS 32-bit em Verilog

![Linguagem](https://img.shields.io/badge/language-Verilog-blue.svg)
![Ferramenta](https://img.shields.io/badge/tool-Intel%20Quartus%20Prime-brightgreen.svg)

## 📖 Descrição do Projeto

Este repositório contém a implementação de um processador didático de 32 bits com um subconjunto da arquitetura MIPS, desenvolvido em Verilog HDL. O projeto foi criado para fins acadêmicos na disciplina de Arquitetura de Computadores, com o objetivo de aplicar os conceitos de design de hardware, datapath e unidade de controle.

O processador é capaz de executar um conjunto de instruções aritméticas, lógicas, de acesso à memória e de desvio, lendo o código de uma memória de instruções (ROM) e utilizando uma memória de dados (RAM) para operações de leitura e escrita. O projeto inclui módulos para exibição de resultados em displays de 7 segmentos, facilitando a depuração e visualização em uma placa FPGA.

## ✨ Funcionalidades e Instruções Implementadas

O processador suporta as seguintes instruções do conjunto MIPS:

*(Nota: Esta lista é uma suposição baseada nos módulos. Adapte-a para refletir as instruções que o seu processador realmente implementa.)*

* **Tipo-R:** `add`, `sub`, `and`, `or`, `slt`
* **Tipo-I:** `lw`, `sw`, `beq`, `addi`
* **Tipo-J:** `j`

## 🏗️ Arquitetura e Módulos

O projeto é modular, separando os principais componentes funcionais do processador para facilitar o desenvolvimento e o teste.

-   `CPU.v`: Módulo principal (top-level) que integra todos os outros componentes do processador.
-   `UnidadeProcessamento.v`: Contém o *datapath* do processador, interligando o PC, o banco de registradores, a ULA e as memórias.
-   `Controle.v`: A Unidade de Controle, responsável por gerar todos os sinais de controle para o *datapath* com base no `opcode` da instrução atual.
-   `ULA.v`: Unidade Lógica e Aritmética que realiza as operações de cálculo (soma, subtração, E, OU, etc.).
-   `Registradores.v`: O banco de registradores MIPS (32 registradores de 32 bits).
-   `ProgramCounter.v`: O Contador de Programa (PC), que aponta para a próxima instrução a ser executada.
-   `ROMSinglePort.v`: A memória de instruções (ROM) onde o programa em linguagem de máquina é armazenado.
-   `RAMDualPortDualClock.v`: A memória de dados (RAM) utilizada pelas instruções `lw` e `sw`.
-   `ExtensorBit.v`: Realiza a extensão de sinal de um valor imediato de 16 para 32 bits.
-   `MUX.v`, `MUX2.v`, `MUX8.v`: Multiplexadores utilizados em diversos pontos do *datapath*.
-   `DivFreq.v`: Divisor de frequência para adequar o clock do sistema para visualização.
-   `OutputMod.v`, `bcd.v`, `seg7.v`: Módulos de saída para converter valores binários para BCD e exibi-los em displays de 7 segmentos.

## 📂 Estrutura de Arquivos

-   **`*.v`**: Arquivos-fonte em Verilog com a descrição de cada módulo do hardware.
-   **`ProcessadorMIPS.qpf`**: Arquivo de projeto do Intel Quartus Prime.
-   **`ProcessadorMIPS.qsf`**: Arquivo de configurações e atribuição de pinos do Quartus.
-   **`*.vwf`**: Arquivos de forma de onda (Waveform) para simulação e teste de cada módulo individualmente.
-   **`GCD.txt`, `test.txt`**: Arquivos de exemplo com código em linguagem de máquina MIPS para serem carregados na ROM.

## 🛠️ Ferramentas Necessárias

* **Intel Quartus Prime:** Ferramenta utilizada para síntese, compilação, simulação e gravação do projeto em uma FPGA. A versão 18.1 ou superior é recomendada.
* **ModelSim (Opcional):** Pode ser utilizado para simulações mais avançadas (geralmente vem integrado ao Quartus).
* **Placa FPGA (Opcional):** Uma placa da família Altera/Intel (como DE1-SoC, DE2-115) para testes em hardware real.

## 🚀 Como Compilar e Simular

1.  **Clone o repositório:**
    ```bash
    git clone https://github.com/BrunoKenji2/ProcessadorMips.git
    ```

2.  **Abra o Projeto no Quartus:**
    * Abra o software Intel Quartus Prime.
    * Vá em `File > Open Project...` e selecione o arquivo `ProcessadorMIPS.qpf`.

3.  **Carregue um Programa na ROM:**
    * O módulo `ROMSinglePort.v` utiliza a função `$readmemh` para carregar um programa.
    * Abra o arquivo `ROMSinglePort.v` e certifique-se de que o caminho para o arquivo de programa (ex: `"GCD.txt"`) está correto.

4.  **Compile o Projeto:**
    * Inicie a compilação completa clicando em `Processing > Start Compilation` ou pelo atalho (botão de "Play" azul).

5.  **Simule o Projeto:**
    * Após a compilação bem-sucedida, vá em `Tools > Run Simulation Tool > RTL Simulation`.
    * O Quartus abrirá a simulação com base no arquivo de waveform (`.vwf`) configurado no `Simulation > Simulation Settings`.
    * Para testar o projeto completo, use o arquivo `CPU.vwf`.


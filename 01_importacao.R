## 2.1 Importação e Diagnóstico Inicial dos Dados

Nesta etapa foi realizada a importação da base original do Titanic e uma primeira verificação da estrutura dos dados.

O objetivo desta fase foi garantir que a base foi carregada corretamente, identificar a quantidade de registros e variáveis disponíveis, verificar os tipos das colunas e levantar problemas iniciais de qualidade dos dados, como valores ausentes e possíveis duplicidades.

Esta etapa está relacionada principalmente à fase de **Data Understanding** do CRISP-DM.

### Script Correspondente

```text
scripts/01_importacao.R
```

### Base Utilizada

A base utilizada nesta etapa foi:

```text
data/titanic_train.csv
```

### Estrutura Inicial da Base

A base possui:

| Informação            | Valor        |
| --------------------- | ------------ |
| Quantidade de linhas  | 712          |
| Quantidade de colunas | 12           |
| Unidade de análise    | 1 passageiro |

Cada linha da base representa um passageiro do Titanic.

### Variáveis Disponíveis

| Variável    | Descrição                         |
| ----------- | --------------------------------- |
| PassengerId | Identificador do passageiro       |
| Survived    | Indicador de sobrevivência        |
| Pclass      | Classe do passageiro              |
| Name        | Nome do passageiro                |
| Sex         | Sexo                              |
| Age         | Idade                             |
| SibSp       | Número de irmãos/cônjuges a bordo |
| Parch       | Número de pais/filhos a bordo     |
| Ticket      | Número do bilhete                 |
| Fare        | Valor da tarifa                   |
| Cabin       | Cabine                            |
| Embarked    | Porto de embarque                 |

### Diagnóstico de Valores Ausentes

Durante o diagnóstico inicial, foram identificados valores ausentes nas seguintes variáveis:

| Variável | Quantidade de Missing | Percentual de Missing |
| -------- | --------------------- | --------------------- |
| Age      | 137                   | 19,24%                |
| Cabin    | 552                   | 77,53%                |
| Embarked | 2                     | 0,28%                 |

A variável `Cabin` apresentou alto percentual de valores ausentes, enquanto `Age` apresentou uma quantidade relevante de dados faltantes. A variável `Embarked` apresentou apenas poucos registros ausentes.

### Verificações Realizadas

Nesta etapa foram realizadas as seguintes verificações:

* Importação da base com `fread`;
* Visualização das primeiras linhas da base;
* Verificação da quantidade de linhas e colunas;
* Listagem dos nomes das variáveis;
* Análise da estrutura das colunas;
* Identificação de valores ausentes;
* Cálculo do percentual de missing por variável;
* Verificação de possíveis linhas duplicadas.

### Saídas Geradas

Como resultado desta etapa, foram planejadas ou geradas as seguintes saídas:

```text
outputs/diagnostico_missing.csv
outputs/base_titanic_importada.csv
```

O arquivo `diagnostico_missing.csv` contém o resumo dos valores ausentes por variável.
O arquivo `base_titanic_importada.csv` representa uma cópia da base após a importação inicial.

### Observação

Nesta etapa ainda não foram realizadas análises sobre a relação entre as variáveis e a sobrevivência dos passageiros.

Perguntas como:

* Mulheres sobreviveram mais?
* Passageiros da primeira classe tiveram maior taxa de sobrevivência?
* A idade influenciou a sobrevivência?
* Viajar sozinho afetou a chance de sobreviver?

serão respondidas na próxima etapa do projeto, correspondente à Análise Exploratória dos Dados.

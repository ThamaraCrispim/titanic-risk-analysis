# Titanic Risk Analysis

## Etapa 01 — Análise Exploratória Inicial (EDA)

### Objetivo

Nesta etapa foi realizada uma análise exploratória inicial da base de dados do Titanic com o objetivo de compreender sua estrutura, avaliar a qualidade dos dados e identificar possíveis fatores relacionados à sobrevivência dos passageiros.

---

## Visão Geral da Base

A base analisada possui:

* 712 passageiros
* 12 variáveis

Variáveis disponíveis:

* PassengerId
* Pclass
* Name
* Sex
* Age
* SibSp
* Parch
* Ticket
* Fare
* Cabin
* Embarked
* Survived

---

## Qualidade dos Dados

### Valores ausentes

| Variável | NAs |      % |
| -------- | --: | -----: |
| Age      | 137 | 19,24% |

### Valores vazios

| Variável | Vazios |      % |
| -------- | -----: | -----: |
| Cabin    |    552 | 77,53% |
| Embarked |      2 |  0,28% |

### Registros duplicados

Nenhum registro duplicado foi encontrado na base.

---

## Insights Iniciais

* A base possui 712 passageiros e 12 variáveis.
* Não foram encontrados registros duplicados.
* A variável Age possui 137 valores ausentes (19,24% da base).
* A variável Cabin apresenta 552 registros vazios (77,53% da base).
* A variável Embarked possui apenas 2 registros vazios.
* A qualidade geral da base é suficiente para iniciar a investigação dos fatores associados à sobrevivência dos passageiros.

---

## Análise Univariada

### Age

Resumo da variável:

* Idade mínima: 0,42 anos
* Idade máxima: 80 anos
* Mediana: 28,5 anos
* 75% dos passageiros possuem até 39 anos

**Insight**

A maior parte dos passageiros é composta por jovens e adultos, com 75% possuindo até 39 anos de idade.

---

### Fare

Resumo da variável:

* Valor mínimo: 0
* Valor máximo: 512,33
* Mediana: 14,45
* Média: 31,82

**Insight**

A tarifa apresenta grande variação entre os passageiros, com valores entre 0 e 512,33. A diferença entre média e mediana sugere a existência de passageiros que pagaram valores significativamente acima da maioria.

---

## Próxima Etapa

### Análise Bivariada

Investigar a relação entre as características dos passageiros e a variável alvo (**Survived**), buscando responder perguntas como:

* Mulheres tiveram maior taxa de sobrevivência?
* Passageiros de classes mais altas sobreviveram mais?
* Crianças tiveram maior chance de sobreviver?
* O valor da tarifa influenciou a sobrevivência?
* Passageiros viajando sozinhos apresentaram maior risco?

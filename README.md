# Titanic Risk Analysis

Status: Em Desenvolvimento

## Sobre o Projeto

Este projeto tem como objetivo analisar os fatores associados à sobrevivência dos passageiros do Titanic utilizando técnicas de Ciência de Dados, Estatística e Modelagem Preditiva.

O desenvolvimento segue a metodologia CRISP-DM (Cross Industry Standard Process for Data Mining), permitindo documentar todas as etapas do projeto, desde o entendimento do problema até a avaliação dos resultados.

---

# 1. Business Understanding

## Objetivo do Negócio

Identificar quais características dos passageiros estiveram associadas à sobrevivência no desastre do Titanic.

## Perguntas de Negócio

* O sexo influenciou a sobrevivência?
* Passageiros de classes mais altas tiveram vantagem?
* A idade impactou as chances de sobrevivência?
* Viajar sozinho afetou a sobrevivência?
* O valor da tarifa esteve relacionado à sobrevivência?

## Objetivo Analítico

Compreender os fatores associados à sobrevivência e construir um modelo capaz de estimar a probabilidade de sobrevivência dos passageiros.

---

# 2. Data Understanding

## Fonte dos Dados

Titanic Dataset, base pública disponibilizada pela plataforma Kaggle.

## Variáveis Principais

| Variável | Descrição                         |
| -------- | --------------------------------- |
| Survived | Indicador de sobrevivência        |
| Pclass   | Classe do passageiro              |
| Sex      | Sexo                              |
| Age      | Idade                             |
| SibSp    | Número de irmãos/cônjuges a bordo |
| Parch    | Número de pais/filhos a bordo     |
| Fare     | Valor da passagem                 |
| Embarked | Porto de embarque                 |

## Diagnóstico Inicial

Durante a análise inicial foram identificados valores ausentes em algumas variáveis.

| Variável | Percentual de Missing |
| -------- | --------------------- |
| Age      | 19,24%                |
| Cabin    | 77,53%                |
| Embarked | 0,28%                 |

---

# 3. Data Preparation

## Tratamento dos Dados

As etapas de preparação dos dados incluem:

* Tratamento de valores ausentes;
* Conversão de tipos de variáveis;
* Padronização de categorias;
* Análise de inconsistências;
* Preparação da base para análise exploratória e modelagem.

## Feature Engineering

Serão criadas novas variáveis para enriquecer a análise e melhorar a interpretação dos fatores associados à sobrevivência.

Variáveis planejadas:

* Faixa etária;
* Tamanho da família;
* Passageiro sozinho;
* Classe social.

---

# 4. Modeling

## Variável Target

A variável target do projeto é `Survived`.

| Valor | Significado    |
| ----- | -------------- |
| 0     | Não sobreviveu |
| 1     | Sobreviveu     |

## Modelos Planejados

Inicialmente, será utilizado um modelo de Regressão Logística, por ser adequado para problemas de classificação binária e permitir interpretação estatística dos fatores associados ao evento de interesse.

Também poderão ser testados outros modelos de classificação para comparação de desempenho.

---

# 5. Evaluation

As métricas serão calculadas após o treinamento dos modelos.

## Métricas Planejadas

* Accuracy;
* ROC Curve;
* AUC;
* GINI;
* KS.

## Objetivo da Avaliação

Avaliar a capacidade do modelo em distinguir passageiros sobreviventes e não sobreviventes, além de analisar quais variáveis contribuem mais para a predição.

---

# 6. Deployment

A base tratada, os resultados e as métricas serão exportados para utilização em análises futuras, relatórios e possíveis dashboards.

Nesta etapa, o objetivo não é criar uma aplicação em produção, mas sim organizar os entregáveis do projeto de forma reprodutível e clara.

---

# Resultados

Esta seção será atualizada conforme o desenvolvimento do projeto.

Serão apresentados:

* Principais insights encontrados;
* Comparação entre variáveis;
* Desempenho dos modelos;
* Interpretação dos resultados;
* Conclusões da análise.

---

# Tecnologias Utilizadas

* R;
* data.table;
* ggplot2;
* Git;
* GitHub.

---

# Estrutura do Projeto

```text
titanic-risk-analysis/
│
├── data/
│
├── scripts/
│   ├── 01_importacao.R
│   ├── 02_eda.R
│   ├── 03_tratamento.R
│   ├── 04_feature_engineering.R
│   ├── 05_modelagem.R
│   └── 06_avaliacao.R
│
├── outputs/
│
└── README.md
```

---

# Próximos Passos

* Finalizar a análise exploratória;
* Implementar as etapas de tratamento;
* Criar variáveis derivadas;
* Treinar o modelo de Regressão Logística;
* Avaliar o desempenho utilizando AUC, GINI e KS;
* Desenvolver visualizações;
* Atualizar a seção de resultados com os principais insights;
* Criar uma versão equivalente em Python.

---

# Autora

Thamara Gabriella Crispim Bezerra

Graduanda em Estatística — UFSCar

Presidente do PANDA UFSCar

Estagiária em Modelagem e Analytics

# Titanic Risk Analysis

## Contexto

Uma empresa especializada em análise de risco e comportamento deseja entender quais características influenciaram a sobrevivência dos passageiros do Titanic.

Este projeto tem como objetivo simular um fluxo analítico próximo ao ambiente corporativo de dados, utilizando técnicas de análise exploratória (EDA), tratamento de dados e criação de atributos (feature engineering).

A proposta é desenvolver um pipeline de análise utilizando R e `data.table`, seguindo etapas semelhantes às utilizadas em ambientes profissionais de analytics e modelagem de risco.

---

## Objetivo de negócio

Identificar quais fatores aumentavam ou diminuíam a chance de sobrevivência dos passageiros.

A partir disso, responder perguntas como:

- Mulheres tiveram maior taxa de sobrevivência?
- Crianças sobreviveram mais?
- Passageiros de classes mais altas tiveram maior chance de sobreviver?
- Pessoas viajando sozinhas apresentaram maior risco?
- O valor da tarifa influenciou a sobrevivência?

---

## Objetivos técnicos

Durante o projeto serão aplicadas técnicas de:

- Importação de dados
- Análise exploratória (EDA)
- Validação estrutural
- Tratamento de valores ausentes
- Limpeza de dados
- Criação de atributos
- Validação de atributos
- Consolidação de resultados
- Exportação de dados tratados

---

## Pipeline do projeto

```text
Importação dos dados
↓
Análise exploratória (EDA)
↓
Validação da qualidade dos dados
↓
Tratamento e limpeza
↓
Feature Engineering
↓
Validação dos atributos
↓
Análise dos resultados
↓
Exportação da base final
```

---

## Dataset utilizado

Dataset público do Titanic disponível no Kaggle:

[Titanic Dataset - Kaggle](https://www.kaggle.com/datasets/heptapod/titanic)

---

## Tecnologias utilizadas

- R
- data.table
- Git
- GitHub

---

## Estrutura do projeto

```text
titanic-risk-analysis/
│
├── dados/
├── scripts/
│   ├── 01_importacao.R
│   ├── 02_eda.R
│   ├── 03_tratamento.R
│   ├── 04_feature_engineering.R
│   ├── 05_validacao.R
│   └── 06_exportacao.R
│
├── outputs/
│
├── README.md
│
└── .gitignore
```

---

## Possíveis atributos desenvolvidos

- faixa_idade
- classe_social
- tamanho_familia
- passageiro_sozinho
- risco_sobrevivencia

---

## Aprendizados esperados

Este projeto foi desenvolvido com foco em:

- prática de análise de dados
- construção de pipeline analítico
- desenvolvimento de raciocínio de negócio
- prática com `data.table`
- organização de projetos em GitHub
- aproximação com cenários reais de mercado

---

## Próximos passos

- Desenvolvimento de visualizações
- Análises estatísticas
- Modelagem preditiva
- Criação de dashboards
- Automatização do pipeline

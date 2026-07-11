# Análise Exploratória e Modelagem Preditiva — Titanic

## Objetivo

Este projeto tem como objetivo realizar uma análise exploratória dos dados do Titanic e, posteriormente, construir um modelo preditivo para identificar os fatores que influenciaram a sobrevivência dos passageiros.

## Contexto

O desastre do Titanic é um dos casos mais conhecidos em ciência de dados e aprendizado de máquina. A base contém informações sobre os passageiros, como sexo, classe, idade, tarifa paga e porto de embarque, permitindo investigar padrões relacionados à sobrevivência.

## Base de dados

A base utilizada foi a base de treinamento do Titanic, disponível em competições e repositórios públicos de ciência de dados.

## Ferramentas utilizadas

- R
- data.table
- ggplot2
- dplyr
- lubridate
- plotly

## Etapas do projeto

1. Carregamento e inspeção inicial da base
2. Diagnóstico de valores ausentes
3. Tratamento dos dados
4. Análise descritiva
5. Frequência das variáveis categóricas
6. Análise cruzada com a variável `Survived`
7. Construção de gráficos
8. Modelagem preditiva
9. Avaliação dos resultados

## Principais achados preliminares

- A maioria dos passageiros era do sexo masculino
- A maior parte dos passageiros estava na 3ª classe
- A variável `Fare` apresentou forte assimetria, com valores altos puxando a média para cima
- A taxa de sobrevivência foi de aproximadamente 38,38%
- Mulheres apresentaram taxa de sobrevivência muito superior à dos homens
- Passageiros da 1ª classe tiveram melhores chances de sobrevivência

## Estrutura do repositório

```text
titanic-project/
├── README.md
├── data/
├── scripts/
├── outputs/
└── .gitignore
```

## Conclusão

O projeto mostra que variáveis como sexo, classe social e tarifa paga tiveram forte relação com a sobrevivência no Titanic. A próxima etapa será a construção e comparação de modelos preditivos para verificar quais variáveis têm maior poder de explicação.

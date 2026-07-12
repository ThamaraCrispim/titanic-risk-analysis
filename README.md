# Análise Exploratória e Modelagem Preditiva do Titanic

## Objetivo

Este projeto tem como objetivo realizar uma análise exploratória da base de dados do Titanic e investigar quais variáveis tiveram maior influência na sobrevivência dos passageiros.  
Como etapa complementar, o projeto pode ser expandido com modelagem preditiva para estimar a probabilidade de sobrevivência.

## Contexto

O naufrágio do Titanic é um dos casos mais conhecidos da história e também um dos conjuntos de dados mais famosos da ciência de dados.  
A base contém informações sobre os passageiros, como sexo, classe social, idade, tarifa paga e porto de embarque, permitindo identificar padrões relacionados à sobrevivência.

## Base de dados

A base utilizada contém os dados de treinamento do Titanic e possui as seguintes variáveis principais:

- `PassengerId`
- `Survived`
- `Pclass`
- `Name`
- `Sex`
- `Age`
- `SibSp`
- `Parch`
- `Ticket`
- `Fare`
- `Cabin`
- `Embarked`

## Ferramentas utilizadas

- R
- data.table
- ggplot2
- dplyr

## Etapas do projeto

1. Carregamento da base
2. Inspeção inicial dos dados
3. Diagnóstico de valores ausentes
4. Tratamento de dados faltantes
5. Análise descritiva
6. Frequência das variáveis categóricas
7. Análise cruzada com a variável `Survived`
8. Construção de gráficos
9. Modelagem preditiva, se aplicada
10. Interpretação dos resultados

## Tratamento dos dados

Durante a preparação da base, foram realizadas as seguintes ações:

- `Age`: preenchido com a mediana
- `Embarked`: preenchido com a moda
- `Cabin`: valores vazios substituídos por `"Sem informação"`

## Principais achados da análise

- A maior parte dos passageiros era do sexo masculino
- A maioria dos passageiros estava na 3ª classe
- A variável `Fare` apresentou forte assimetria, com poucos valores muito altos
- Apenas cerca de 38,38% dos passageiros sobreviveram
- Mulheres tiveram taxa de sobrevivência muito maior do que homens
- Passageiros da 1ª classe apresentaram melhores chances de sobrevivência
- Tarifas mais altas estiveram associadas a maior probabilidade de sobrevivência

## Conclusão

A análise mostra que variáveis como sexo, classe social e tarifa paga tiveram forte relação com a sobrevivência no Titanic.  
Os resultados reforçam a importância de combinar análise exploratória com visualização e, futuramente, modelagem preditiva para aprofundar a interpretação dos dados.

## Próximos passos

- Criar gráficos para ilustrar os principais padrões
- Realizar feature engineering
- Testar modelos preditivos
- Avaliar a performance com métricas como accuracy, matriz de confusão e F1-score

## Estrutura do projeto

```text
titanic-project/
├── README.md
├── data/
│   ├── raw/
│   │   └── train.csv
│   └── processed/
│       └── titanic_limpo.csv
├── scripts/
│   ├── 01_analise_exploratoria.R
│   ├── 02_graficos.R
│   └── 03_modelagem.R
├── outputs/
│   ├── figures/
│   └── tables/
└── .gitignore
```

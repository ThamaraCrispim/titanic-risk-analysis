# ══════════════════════════════════════════════════════════════════════════════
# ANÁLISE DO TITANIC
# ══════════════════════════════════════════════════════════════════════════════

# 1. Pacotes ──────────────────────────────────────────────────────────────────

library(data.table)
library(ggplot2)
library(dplyr)

# 2. Diretório ────────────────────────────────────────────────────────────────

setwd("C:\\Users\\Thama\\OneDrive\\Área de Trabalho")

# 3. Carregamento da base ─────────────────────────────────────────────────────

dt <- fread('Estudo/titanic/train.csv')

# 4. Inspeção inicial ─────────────────────────────────────────────────────────

names(dt)
# [1] "PassengerId" "Survived"    "Pclass"      "Name"        "Sex"
#     "Age"         "SibSp"       "Parch"       "Ticket"      "Fare"
#     "Cabin"       "Embarked"

str(dt)
# Classes 'data.table' and 'data.frame': 891 obs. of  12 variables:
# $ PassengerId: int  1 2 3 4 5 6 7 8 9 10 ...
# $ Survived   : int  0 1 1 1 0 0 0 0 1 1 ...
# $ Pclass     : int  3 1 3 1 3 3 1 3 3 2 ...
# $ Name       : chr  "Braund, Mr. Owen Harris" ...
# $ Sex        : chr  "male" "female" "female" "female" ...
# $ Age        : num  22 38 26 35 35 NA 54 2 27 14 ...
# $ SibSp      : int  1 1 0 1 0 0 0 3 0 1 ...
# $ Parch      : int  0 0 0 0 0 0 0 1 2 0 ...
# $ Ticket     : chr  "A/5 21171" "PC 17599" ...
# $ Fare       : num  7.25 71.28 7.92 53.1 8.05 ...
# $ Cabin      : chr  "" "C85" "" "C123" ...
# $ Embarked   : chr  "S" "C" "S" "S" ...

dim(dt)
# [1] 891  12

head(dt, 10)

# 5. Diagnóstico de valores ausentes ─────────────────────────────────────────

# Conta NA reais
na_real <- colSums(is.na(dt))

# Conta strings vazias em colunas de texto
vazios <- sapply(dt, function(x) if (is.character(x)) sum(x == "") else 0)

# Soma os dois e calcula percentual
total_ausentes <- na_real + vazios
percentual     <- round(total_ausentes / nrow(dt) * 100, 2)

# Tabela resumida
resumo_na <- data.table(
  Coluna     = names(total_ausentes),
  NA_real    = na_real,
  Vazio      = vazios,
  Total      = total_ausentes,
  Percentual = percentual
)

# Mostra só colunas com problema
resumo_na[Total > 0]

# Insight: A análise de valores ausentes mostra que Age possui 177 valores
# faltantes (19,87%), Cabin apresenta 687 registros vazios (77,10%) e
# Embarked tem apenas 2 valores ausentes (0,22%). Age e Embarked podem
# ser tratados com imputação, enquanto Cabin exige estratégia diferente
# por concentrar grande parte dos dados faltantes.

# 6. Tratamento dos dados ─────────────────────────────────────────────────────

# Age → preencher NA com a mediana
mediana_age <- median(dt$Age, na.rm = TRUE)
dt[is.na(Age), Age := mediana_age]

# Embarked → preencher vazio com a moda
moda_embarked <- dt[Embarked != "", .N, by = Embarked][order(-N)][1, Embarked]
dt[Embarked == "", Embarked := moda_embarked]

# Cabin → marcar vazio como "Sem informação"
dt[Cabin == "", Cabin := "Sem informação"]

# Verificação do tratamento
sum(dt$Embarked == "")  # esperado: 0
sum(dt$Cabin == "")     # esperado: 0
colSums(is.na(dt))      # esperado: tudo 0

# 7. Análise descritiva ───────────────────────────────────────────────────────

summary(dt)

# Insight:
# 1. Fare: a média (32,20) é muito maior que a mediana (14,45), indicando
#    forte assimetria. Poucos passageiros pagaram tarifas muito altas,
#    sugerindo grande desigualdade econômica entre os passageiros.
#
# 2. Survived: a média de 0,3838 indica que apenas 38,38% sobreviveram.
#    A variável resposta está desbalanceada, ou seja, a maioria dos
#    registros representa não sobreviventes.
#
# 3. Pclass: a mediana igual a 3 mostra que a maior parte dos passageiros
#    estava na 3ª classe, o que pode ter impacto direto na sobrevivência.

# 8. Frequência das categóricas ───────────────────────────────────────────────

# Sexo
dt[, .(
  total      = .N,
  percentual = round(.N / nrow(dt) * 100, 2)
), by = Sex][order(-total)]

# Sex    total percentual
# male     577      64.76
# female   314      35.24

# Insight: Dos 891 passageiros, 577 (64,8%) eram homens e 314 (35,2%) eram
# mulheres. A regra de evacuação "mulheres e crianças primeiro" sugere que
# o sexo pode ser uma das variáveis com maior influência na sobrevivência.

# Classe
dt[, .(
  total      = .N,
  percentual = round(.N / nrow(dt) * 100, 2)
), by = Pclass][order(Pclass)]

# Pclass total percentual
#      1   216      24.24
#      2   184      20.65
#      3   491      55.11

# Insight: A maioria estava na 3ª classe (491 passageiros, 55,1%), seguida
# pela 1ª classe (216, 24,2%) e 2ª classe (184, 20,6%). Passageiros de
# classes mais baixas tinham menos acesso aos botes salva-vidas, o que pode
# ter impactado diretamente a taxa de sobrevivência.

# Porto de embarque
dt[, .(
  total      = .N,
  percentual = round(.N / nrow(dt) * 100, 2)
), by = Embarked][order(-total)]

# Embarked total percentual
#        S   646      72.50
#        C   168      18.86
#        Q    77       8.64

# Insight: A maioria embarcou em Southampton (646, 72,5%), seguido por
# Cherbourg (168, 18,8%) e Queenstown (77, 8,6%). Southampton era o porto
# principal de partida do Titanic. O porto de embarque pode estar relacionado
# indiretamente com a classe social e, por consequência, com a sobrevivência.

# 9. Análise cruzada ──────────────────────────────────────────────────────────

# Sexo x Sobrevivência
dt[, .N, by = .(Sex, Survived)][order(Sex, Survived)]

# Sex    Survived   N
# female        0  81
# female        1 233
# male          0 468
# male          1 109

# Insight: Das 314 mulheres, 233 sobreviveram (74,2%). Dos 577 homens,
# apenas 109 sobreviveram (18,9%). O sexo foi determinante na sobrevivência,
# reflexo direto da política de evacuação "mulheres e crianças primeiro".

# Classe x Sobrevivência
dt[, .N, by = .(Pclass, Survived)][order(Pclass, Survived)]

# Pclass Survived   N
#      1        0  80
#      1        1 136
#      2        0  97
#      2        1  87
#      3        0 372
#      3        1 119

# Insight: Passageiros da 1ª classe tiveram maior taxa de sobrevivência
# (136 de 216, ou 63%), enquanto a 3ª classe concentrou a maior parte das
# vítimas (372 de 491, ou 75,8% de mortes). Isso reforça que a posição
# social influenciou diretamente o acesso aos botes salva-vidas.

# Tarifa x Sobrevivência
dt[, .(
  media_fare   = round(mean(Fare), 2),
  mediana_fare = round(median(Fare), 2)
), by = Survived][order(Survived)]

# Survived media_fare mediana_fare
#        0      22.12        10.50
#        1      48.40        26.00

# Insight: Quem sobreviveu pagou em média uma tarifa de 48,40, enquanto
# quem não sobreviveu pagou em média 22,12. Isso reforça a relação entre
# poder econômico e sobrevivência, já que tarifas mais altas estavam
# associadas à 1ª classe, que tinha acesso prioritário aos botes salva-vidas.

# Idade x Sobrevivência
dt[, .(
  media_age   = round(mean(Age), 2),
  mediana_age = round(median(Age), 2)
), by = Survived][order(Survived)]

# Survived media_age mediana_age
#        0     30.03          28
#        1     28.29          28

# Insight: A diferença de idade entre sobreviventes (média 28,29) e não
# sobreviventes (média 30,03) é pequena, o que indica que a idade sozinha
# não foi o fator mais determinante. Porém, combinada com sexo e classe,
# pode contribuir para a análise preditiva.

# Exportar a base principal tratada

fwrite(dt, 'Estudo/titanic/titanic_limpo.csv')

names(dt)

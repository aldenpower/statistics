library(FrF2)

# Dos 16 experimentos feitos com o experimento full
# foram escolhidos 8 no intuito de reduzir a quantidade
# de experimentos

# 8 experimentos dos 16 e 4 variáveis de interesse (altura, comp, larg, clipes)

FrF2(8, 4, factor.names = c("altura", "comp", "larg", "clipes"))

# altura comp larg clipes
# 1     -1    1    1     -1
# 2     -1    1   -1      1
# 3      1   -1    1     -1
# 4     -1   -1    1      1
# 5      1    1   -1     -1
# 6     -1   -1   -1     -1
# 7      1   -1   -1      1
# 8      1    1    1      1
# class=design, type= FrF2 
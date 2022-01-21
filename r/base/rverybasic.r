#   data types

# var declaration
x <- 10; 0.56 -> x; x = -8; assign("x", 2i)
# vector - A collection of values of the same type
my.vector <- c(10, 20, 30, 40)
vec2 = seq(from = 1, to = 5)
vec3 = seq(from = 1, to = 5, by = 0.5)
vec4 = seq(from = 1, to = 5, length.out = 4)
# matrix - A structure of values with rows and columns of the same type
my.matrix <- matrix(c(10 , 20, 30, 40, 12, 26, 34, 39), nrow = 4, ncol = 2); colnames(my.matrix) <- c("myFirstCOl", "mySecondCOl"); rownames(my.matrix) <- c("Case1", "Case2", "Case3", "Case4")
my.matrix
# array - Same as matrix but with more than two dimensions
# list - An ordered collection of objects (components) that may be of different types and lengths
my.list <- list(lvector = my.vector, lmatrix = my.matrix)
my.list
# factor - For classifying categorical data; has levels and labels
my.factor <- factor(c(1,0,1,1),levels = c(0, 1), labels = c("Incorrect", "Correct"))
my.factor
# data.frame - A collection of variables and records (or observations)
my.data.frame <- data.frame(CTQ = my.vector, state = my.factor, aux = my.matrix)
my.data.frame
# str
# head
head(my.data.frame, 5)
# index
my.vector[0:3]

# length
length(my.data.frame)
length(my.vector)
length(my.matrix)
length(my.matrix[,1])

# dim
dim(my.matrix)
mode(my.matrix)

# Convinience
# Lista curta de variaveis definidas
ls(); objects() #Iguais
str(my.data.frame) #Informaceos detalhadas do objeto
rm() # Deleta algo
rm(list = ls()) # Deleta todas as variaveis
class() # Ver o tipo de objeto

# Operators
# ∧ / * + -
# < <= > >= == != & | ! TRUE FALSE

# Math functions
abs()
#log(x , b) log de x na base b
log() # log natural de uma variavel
#log10() log de variavel na base 10
#exp(x) exponencial elevado a x
# sin(), cos(), tan()
# round(x, digits = n)
# ceiling(x) arredonda x para o maior valor
# floor(x) arredonda x para menor valor
# sum()
# prod()
# max()
# min()
# range(x) retorna o maior e o menor valor do vetor x

# Matrix operation
#A * B produto elemento a elemento de A e B
#A% * %B produto matricial
#B = aperm(A) matriz transposta de B
#B = t(A) matriz transposta de B
#B = solve(A) matriz inversa
#x = solve(A, b) resolve o sistema linear Ax = b
#det(A) determinante de A
#diag(v) matriz diagonal com o vetor v
#diag(A) retorna um vetor que e a diagonal da matriz A
#diag(n) sendo n um inteiro, retorna uma matriz identidade de ordem n
#eigen(A) auto valores e auto vetores de A
#eigen(A)$values retorna autovalores de a
#eigen(A)$vectors retorna autovetores de A


# Sistema
getwd() # diretorio
dir() # list files

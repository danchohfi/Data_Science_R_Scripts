#Cap1
# Primeiros Passos na Linguagem R
# Configurando o diretório de trabalho
# Coloque entre aspas o diretório de trabalho que você está usando no seu computador
# Não use diretórios com espaço no nome
setwd("C:/R_Fundamentos")
#Le O diretorio em que você está
getwd()
# Nome dos Contributors do R
contributors()
# Licença
license()
# Informações sobre a sessão
sessionInfo()
# Imprimir na tela
print('Estou iniciando minha caminhada na carreira de Cientista de Dados')
# Criar gráficos
plot(1:25)
# Instalar pacotes
install.packages('randomForest')
install.packages('ggplot2')
install.packages("dplyr")
install.packages("devtools")
# Carregar o pacote
library(ggplot2)
# Descarregar o pacote
detach(package:ggplot2)
# Se souber o nome da função
help(mean)
?mean
# Para buscar mais opções sobre uma função, use o pacote SOS
install.packages("sos")
library(sos)
findFn("fread")
# Se não souber o nome da função
help.search('randomForest')
help.search('matplot')
??matplot
RSiteSearch('matplot')
example('matplot')
# Sair
q()
#Cap2
# Operadores Básicos
# Soma
7 + 7
# Subtração
7 - 4
# Multiplicação
5 * 5
# Divisão
6 / 6
# Potência
3^2
3**2
# Módulo - Resto da Divisão
16 %% 3 
# Operadores Relacionais
# Atribuindo variáveis
x = 7
y = 5
z <- 10
# Operadores <>=!
x > 8
x < 8
x <= 8
x >= 8
x == 8
x != 8
# Operadores lógicos
# And &
(x==8) & (x==6)
(x==7) & (x>=5)
(x==8) & (x==7)
# Or |
(x==8) | (x>5)
(x==8) | (x>=5)
# Not !
print(!x > 8)
#Cap3
# Criando Variáveis
var1 = 100
var1
mode(var1)
help("mode")
sqrt(var1)
# Podemos atribuir o valor de uma variável a outra variável
var2 = var1
var2
mode(var2)
typeof(var2)
help("typeof")
# Uma variável pode ser uma lista de elementos
var3 = c("primeiro", "segundo", "terceiro")
var3
mode(var3)
# Uma variável pode ser uma função
var4 = function(x) {x+3}
var4
mode(var4)
# Podemos também mudar o modo do dado. 
var5 = as.character(var1)
var5
mode(var5)
# Atribuindo valores a objetos <- ou ->
x <- c(1,2,3)
x
x1 = c(1,2,3)
x1
c(1,2,3) -> y
y
assign("x", c(6.3,4,-2))
x
# Verificando o valor em uma posição específica
x[1]
# Verificar objetos
ls()
objects()
# Remover objetos
rm(x)
x
#Cap4
# Numeric - Todos os números criados em R são do modo numeric
# São armazenados como números decimais (double)
num1 <- 7
num1
class(num1)
mode(num1)
typeof(num1)
#Different Double
num2 = 16.82
num2
mode(num2)
typeof(num2)
# Integer 
# Convertemos tipos numeric para integer
is.integer(num2)
y = as.integer(num2)
y
class(y)
mode(y)
typeof(y)
as.integer('3.17')
as.integer("Joe")
as.integer('Joe')
as.integer(TRUE)
as.integer(FALSE)
as.integer('TRUE')
# Character
char1 = 'A'
char1
mode(char1)
typeof(char1)
char2 = "cientista"
char2
mode(char2)
typeof(char2)
char3 = c("Data", "Scicence", "Academy")
char3
mode(char3)
typeof(char3)
# Complex
compl = 2.5 + 4i
compl
mode(compl)
typeof(compl)
sqrt(-1) 
sqrt(-1+0i)
sqrt(as.complex(-1)) 
# Logic
x = 1; y = 2 
z = x > y
z
class(z)
u = TRUE; v = FALSE 
class(u)
u & v
u | v   
!u
# Operações com 0
5/0
0/5
# Erro
'Joe'/5
#Cap5
# Vetor: possui 1 dimensão e 1 tipo de dado
vetor1 <- c(1:20)
vetor1
length(vetor1)
mode(vetor1)
class(vetor1)
typeof(vetor1)
# Matriz: possui 2 dimensões e 1 tipo de dado 
matriz1 <- matrix(1:20, nrow = 2)
matriz1
length(matriz1)
mode(matriz1)
class(matriz1)
typeof(matriz1)
# Array: possui 2 ou mais dimensões e 1 tipo de dado 
array1 <- array(1:5, dim = c(3,3,3))
array1
length(array1)
mode(array1)
class(array1)
typeof(array1)
# Data Frames: dados de diferentes tipos
# Maneira mais fácil de explicar data frames: é uma matriz com diferentes tipos de dados
View(iris)
length(iris)
mode(iris)
class(iris)
typeof(iris)
# Listas: coleção de diferentes objetos
# Diferentes tipos de dados são possíveis e comuns
lista1 <- list(a = matriz1, b = vetor1)
lista1
length(lista1)
mode(lista1)
class(lista1)
typeof(lista1)
# Funções também são vistas como objetos em R
func1 <- function(x) {
  var1 <- x * x
  return(var1)
}
func1(5)
class(func1)
# Removendo objetos
objects()
rm(array1, func1)
objects()
#Cap6
# Vetor de strings
vetor_caracter = c("Data", "Science", "Academy")
vetor_caracter
# Vetor de floats
vetor_numerico = c(1.90, 45.3, 300.5) 
vetor_numerico
# Vetor de valores complexos
vetor_complexo = c(5.2+3i, 3.8+4i)
vetor_complexo
# Vetor de valores lógicos
vetor_logico = c(TRUE, FALSE, TRUE, FALSE, FALSE) 
vetor_logico
# Vetor de números inteiros
vetor_integer  = c(2, 4, 6)
vetor_integer
# Utilizando seq()
vetor1 = seq(1:10)
vetor1
is.vector(vetor1)
# Utilizando rep()
vetor2 = rep(1:5)
vetor2
is.vector(vetor2)
# Indexação de vetores
a <- c(1,2,3,4,5)
a
a[1]
a[6]
b <- c("Data", "Science", "Academy")
b
b[1]
b[2]
b[3]
b[4]
# Combinando vetores
v1 = c(2, 3, 5) 
v2 = c("aa", "bb", "cc", "dd", "ee") 
c(v1, v2) 
# Operações com Vetores
x = c(1, 3, 5, 7) 
y = c(2, 4, 6, 8)
x * 5
x + y
x - y
x * y
x / y
# Somando vetores com números diferentes de elementos
alfa = c(10, 20, 30) 
beta = c(1, 2, 3, 4, 5, 6, 7, 8, 9) 
alfa + beta 
# Vetor Nomeado
v = c("Nelson", "Mandela") 
v
names(v) = c("Nome", "Sobrenome") 
v
v["Nome"]
#Cap7
# Criando Matrizes
# Número de Linhas
matrix (c(1,2,3,4,5,6), nr = 2)
matrix (c(1,2,3,4,5,6), nr = 3)
matrix (c(1,2,3,4,5,6), nr = 6)
# Número de Colunas
matrix (c( 1,2,3,4,5,6), nc = 2)
# Help
?matrix
# Matrizes precisam ter um número de elementos que seja múltiplo do número de linhas
matrix (c(1,2,3,4,5), nc = 2)
# Criando matrizes a partir de vetores e preenchendo a partir das linhas
meus_dados = c(1:10)
matrix(data = meus_dados, nrow = 5, ncol = 2, byrow = T)
matrix(data = meus_dados, nrow = 5, ncol = 2)
# Fatiando a Matriz
mat <- matrix(c(2,3,4,5), nr = 2)
mat
mat[1,2]
mat[2,2]
mat[1,3]
mat[,2]
# Criando uma matriz diagonal
matriz = 1:3
diag(matriz)
# Extraindo vetor de uma matriz diagonal
vetor = diag(matriz)
diag(vetor)
# Transposta da matriz
W <- matrix (c(2,4,8,12 ), nr = 2, ncol = 2)
W
t(W)
U <- t(W)
U
# Obtendo uma matriz inversa
solve(W)
# Multiplicação de Matrizes
mat1 <- matrix(c(2,3,4,5), nr = 2)
mat1
mat2 <- matrix(c(6,7,8,9), nr = 2)
mat2
mat1 * mat2
mat1 / mat2
mat1 + mat2
mat1 - mat2
# Multiplicando Matriz com Vetor
x = c(1:4)
x
y <- matrix(c(2,3,4,5), nr = 2)
x * y 
# Nomeando a Matriz
mat3 <- matrix(c('Terra', 'Marte', 'Saturno', 'Netuno'), nr = 2)
mat3
dimnames(mat3) = (list( c("Linha1", "Linha2"), c("Coluna1", "Coluna2")))
mat3
# Identificando linhas e colunas no momento de criação da Matriz
matrix (c(1,2,3,4), nr = 2, nc = 2, dimnames = list(c("Linha 1", "Linha 2" ), c( "Coluna 1", " Coluna 2") ))
# Combinando Matrizes
mat4 <- matrix(c(2,3,4,5), nr = 2)
mat4
mat5 <- matrix(c(6,7,8,9), nr = 2)
mat5
cbind(mat4, mat5)
rbind(mat4, mat5)
# Desconstruindo a Matriz
c(mat4)
#Cap8
# Use list() para criar listas
# Lista de strings
lista_caracter1 = list('A', 'B', 'C')
lista_caracter1
lista_caracter2 = list(c("A", "A"), 'B', 'C')
lista_caracter2
lista_caracter3 = list(matrix(c("A", "A", "A", "A"), nr = 2), 'B', 'C')
lista_caracter3
# Lista de números inteiros
lista_inteiros = list(2, 3, 4)
lista_inteiros
# Lista de floats
lista_numerico = list(1.90, 45.3, 300.5)
lista_numerico
# Lista de números complexos
lista_complexos = list(5.2+3i, 2.4+8i)
lista_complexos
# Lista de valores lógicos
lista_logicos = list(TRUE, FALSE, FALSE)
lista_logicos
# Listas Compostas
lista_composta1 = list("A", 3, TRUE)
lista_composta1
lista1 <- list(1:10, c("Zico", "Ronaldo", "Garrincha"), rnorm(10))
lista1
?rnorm
# Slicing (Fatiamento) da Lista
lista1[1]
lista1[2]
lista1[[2]][1]  
lista1[[2]][1] = "Monica" 
lista1
# Para nomear os elementos - Listas Nomeadas
names(lista1) <- c("inteiros", "caracteres", "numéricos")
lista1
vec_num <- 1:4
vec_char <- c("A", "B", "C", "D")
lista2 <- list(Numeros = vec_num, Letras = vec_char)
lista2
# Nomear os elementos diretamente
lista2 <- list(elemento1 = 3:5, elemento2 = c(7.2,3.5))
lista2
# Trabalhando com elementos específicos da lista
names(lista1) <- c("inteiros", "caracteres", "numéricos")
lista1
lista1$caracteres
length(lista1$inteiros)
lista1$inteiros
# Verificar o comprimento da lista
length(lista1)
# Podemos extrair um elemento específico dentro de cada nível da lista
lista1$caracteres[2]
# Mode dos elementos
mode(lista1$numéricos)
mode(lista1$caracteres)
# Combinando 2 listas
lista3 <- c(lista1, lista2)
lista3
# Transformando um vetor em lista
v = c(1:3)
v
l  = as.list(v)
l
# Unindo 2 elementos em uma lista
mat = matrix(1:4, nrow = 2)
mat
vec = c(1:9)
vec
lst = list(mat, vec)
lst
#Cap9
# String
texto <- "Isso é uma string!"
texto
x = as.character(3.14) 
x
class(x) 
# Concatenando Strings
nome = "Nelson"; sobrenome = "Mandela" 
paste(nome, sobrenome)
cat(nome, sobrenome)
# Formatando a saída
sprintf("A %s é nota %d", "Data Science Academy", 10) 
# Extraindo parte da string
texto <- "Isso é uma string!"
substr(texto, start=12, stop=17) 
?substr
# Contando o número de caracteres
nchar(texto)
# Alterando a capitalização
tolower("Histogramas e Elementos de Dados")
toupper("Histogramas e Elementos de Dados")
# Usando stringr
library(stringr)
# Dividindo uma string em caracteres
?strsplit
strsplit("Histogramas e Elementos de Dados", NULL)
# Dividindo uma string em caracteres, após o caracter espaço
strsplit("Histogramas e Elementos de Dados", " ")
# Trabalhando com strings
string1 <- c("Esta é a primeira parte da minha string e será a primeira parte do meu vetor", 
             "Aqui a minha string continua, mas será transformada no segundo vetor")
string1
string2 <- c("Precisamos testar outras strings - @???!§$",
             "Análise de Dados em R")
string2
# Adicionando 2 strings
str_c(c(string1, string2), sep = "")
# Podemos contar quantas vezes um caracter aparece no texto
str_count(string2, "s")
# Localiza a primeira e última posição em que o caracter aparece na string
str_locate_all(string2, "s")
# Substitui a primeira ocorrência de um caracter
str_replace(string2, "\\s", "")
# Substitui todas as ocorrências de um caracter
str_replace_all(string2, "\\s", "")
# Detectando padrões nas strings
string1 <- "17 jan 2001"
string2 <- "1 jan 2001"
padrao <- "jan 20"
grepl(pattern = padrao, x = string1)
padrao <- "jan20"
grepl(pattern = padrao, x = string1)
#Cap10
# Criando um dataframe vazio
df <- data.frame()
class(df)
df
# Criando vetores vazios
nomes <- character()
idades <- numeric()
itens <- numeric()
codigos <- integer()
df <- data.frame(c(nomes, idades, itens, codigos))
df
# Criando vetores
pais = c("Portugal", "Inglaterra", "Irlanda", "Egito", "Brasil")
nome = c("Bruno", "Tiago", "Amanda", "Bianca", "Marta")
altura = c(1.88, 1.76, 1.53, 1.69, 1.68)
codigo = c(5001, 2183, 4702, 7965, 8890)
# Criando um dataframe de diversos vetores
pesquisa = data.frame(pais, nome, altura, codigo)
pesquisa
# Adicionando um novo vetor a um dataframe existente
olhos = c("verde", "azul", "azul", "castanho", "castanho")
pesq = cbind(pesquisa, olhos)
pesq
# Informações sobre o dataframe
str(pesq)
dim(pesq)
length(pesq)
# Obtendo um vetor de um dataframe
pesq$pais
pesq$nome
# Extraindo um único valor
pesq[1,1]
pesq[3,2]
# Número de Linhas e Colunas
nrow(pesq)
ncol(pesq)
# Primeiros elementos do dataframe
head(pesq)
head(mtcars)
# Últimos elementos do dataframe
tail(pesq)
tail(mtcars)
# Data frames built-in do R
?mtcars
mtcars
View(mtcars)
# Filtro para um subset de dados que atendem a um critério
pesq[altura < 1.60,]
pesq[altura < 1.60, c('codigo', 'olhos')]
pesq
# Dataframes Nomeados
names(pesq) <- c("País", "Nome", "Altura", "Código", "Olhos")
pesq
colnames(pesq) <- c("Var 1", "Var 2", "Var 3", "Var 4", "Var 5")
rownames(pesq) <- c("Obs 1", "Obs 2", "Obs 3", "Obs 4", "Obs 5")
pesq
# Carregando um arquivo csv
?read.csv
pacientes <- data.frame(read.csv(file = 'pacientes.csv', header = TRUE, sep = ","))
# Visualizando o dataset
View(pacientes)
head(pacientes)
summary(pacientes)
# Visualizando as variáveis
pacientes$Diabete
pacientes$status
pacientes$Status
# Histograma
hist(pacientes$Idade)
# Combinando dataframes
dataset_final <- merge(pesq, pacientes)
dataset_final
#Big Data na Pratica ------ Capitulo especial
# Dataset:
# Berkeley Earth
# http://berkeleyearth.org/data
# TemperaturasGlobais.csv ~ 78 MB (zip) ~ 496 MB (unzip)
# Façs o download do arquivo zip no link abaixo e descompacte na mesma pasta onde está este script. 
# https://drive.google.com/open?id=1nSwP3Y0V7gncbnG_DccNhrTRxmUNqMqa
# Instalando e Carregando Pacotes
# Obs: os pacotes precisam ser instalados apenas uma vez. Se já instalou em outros scripts, não é necessário instalar novamente!
install.packages("readr")
install.packages("data.table")
install.packages("dplyr")
install.packages("ggplot2")
library(readr)
library(dplyr)
library(ggplot2)
library(scales)
library(data.table)
# Carregando os dados (Usando um timer para comparar o tempo de carregamento com diferentes funções)
# Usando read.csv2()
system.time(df_teste1 <- read.csv2("TemperaturasGlobais/TemperaturasGlobais.csv"))
# Usando read.table()
system.time(df_teste2 <- read.table("TemperaturasGlobais/TemperaturasGlobais.csv"))
# Usando fread()
?fread
system.time(df <- fread("TemperaturasGlobais/TemperaturasGlobais.csv"))
# Criando subsets dos dados carregados
cidadesBrasil <- subset(df, Country == 'Brazil')
cidadesBrasil <- na.omit(cidadesBrasil)
head(cidadesBrasil)
nrow(df)
nrow(cidadesBrasil)
dim(cidadesBrasil)
# Preparação e Organização
# Convertendo as Datas
cidadesBrasil$dt <- as.POSIXct(cidadesBrasil$dt,format='%Y-%m-%d')
cidadesBrasil$Month <- month(cidadesBrasil$dt)
cidadesBrasil$Year <- year(cidadesBrasil$dt)
# Carregando os subsets
# Palmas
plm <- subset(cidadesBrasil, City == 'Palmas')
plm <- subset(plm, Year %in% c(1796,1846,1896,1946,1996,2012))
# Curitiba
crt <- subset(cidadesBrasil, City == 'Curitiba')
crt <- subset(crt, Year %in% c(1796,1846,1896,1946,1996,2012))
# Recife
recf <- subset(cidadesBrasil, City=='Recife')
recf <- subset(recf,Year %in% c(1796,1846,1896,1946,1996,2012))
# Construindo os Plots
p_plm <- ggplot(plm, aes(x = (Month), y = AverageTemperature, color = as.factor(Year))) +
  geom_smooth(se = FALSE,fill = NA, size = 2) +
  theme_light(base_size = 20) +
  xlab("Mês")+
  ylab("Temperatura Média") +
  scale_color_discrete("") +
  ggtitle("Temperatura Média ao longo dos anos em Palmas") +
  theme(plot.title = element_text(size = 18))

p_crt <- ggplot(crt, aes(x = (Month), y = AverageTemperature, color = as.factor(Year))) +
  geom_smooth(se = FALSE,fill = NA, size = 2) +
  theme_light(base_size = 20) +
  xlab("Mês")+
  ylab("Temperatura") +
  scale_color_discrete("") +
  ggtitle("Temperatura Média ao longo dos anos em Curitiba") +
  theme(plot.title = element_text(size = 18))

p_recf <- ggplot(recf, aes(x = (Month), y = AverageTemperature, color = as.factor(Year))) +
  geom_smooth(se = FALSE,fill = NA, size = 2) +
  theme_light(base_size = 20) +
  xlab("Mês")+
  ylab("Temperatura Média") +
  scale_color_discrete("") +
  ggtitle("Temperatura Média ao longo dos anos em Recife") +
  theme(plot.title = element_text(size = 18))
# Plotando
p_plm
p_crt
p_recf
#Cap3 
#Fatores e Fatores ordenados
vec1 <- c("Macho","Femea","Femea","Macho","Macho")
vec1
fac_vec1 <- factor(vec1)
fac_vec1
class(vec1)
class(fac_vec1)
# Variáveis categóricas nominais
# Não existe uma ordem implícita
animais <- c("Zebra", "Pantera", "Rinoceronte", "Macaco", "Tigre")
animais
class(animais)
fac_animais <- factor(animais)
fac_animais
class(fac_animais)
levels(fac_animais)
# Variáveis categóricas ordinais
# Possuem uma ordem natural
grad <- c("Mestrado", "Doutorado", "Bacharelado", "Mestrado", "Mestrado")
grad
fac_grad <- factor(grad, order = TRUE, levels = c("Doutorado", "Mestrado", "Bacharelado"))
fac_grad
levels(fac_grad)
# Sumarizar os dados fornece uma visão geral sobre o conteúdo das variáveis
summary(fac_grad)
summary(grad)
vec2 <- c("M", "F", "F", "M", "M", "M", "F", "F", "M", "M", "M", "F", "F", "M", "M")
vec2
fac_vec2 <- factor(vec2)
fac_vec2
levels(fac_vec2) <- c("Femea", "Macho")
fac_vec2
summary(fac_vec2)
summary(vec2)
# Mais exemplos
data = c(1,2,2,3,1,2,3,3,1,2,3,3,1)
fdata = factor(data)
fdata
rdata = factor(data, labels = c("I","II","III"))
rdata
# Fatores Não-Ordenados
set1 <- c("AA", "B", "BA", "CC", "CA", "AA", "BA", "CC", "CC")
set1
# Transformando os dados. 
# R apenas criou os níveis, o que não significa que exista uma hierarquia.
f.set1 <- factor(set1)
f.set1
class(f.set1)
is.ordered(f.set1)
# Fatores Ordenados
o.set1 <- factor(set1, 
                 levels = c("CA", "BA", "AA", "CC", "B"), 
                 ordered = TRUE)
o.set1
is.ordered(o.set1)
as.numeric(o.set1)
table(o.set1)
# Fatores e Dataframes
df <- read.csv2("etnias.csv", sep = ',')
View(df)
# Variáveis do tipo fator
str(df)
# Níveis dos fatores
# Internamente, o R armazena valores inteiros e faz um mapeamento para as strings (em ordem alfabética)
# e agrupa as estatísticas por níveis. Agora, se fizermos sumarização de estatísticas, é possível visualizar 
# a contabilização para cada categoria
levels(df$Etnia)
summary(df$Etnia)
# Plot
# Agora se fizermos um plot, temos um boxplot para estas variáveis categóricas
plot(df$Idade~df$Etnia, xlab = 'Etnia', ylab = 'Idade', main = 'Idade por Etnia')
# Regressão
summary(lm(Idade~Etnia, data = df))
# Convertendo uma coluna em variável categórica. Isso criará um fator não-ordenado
df
str(df)
df$Estado_Civil.cat <- factor(df$Estado_Civil, labels = c("Solteiro", "Casado", "Divorciado"))
df
str(df)
#Fatores - Dataframe
# Níveis dos fatores
# Internamente, o R armazena valores inteiros e faz um mapeamento para as strings (em ordem alfabética)
# e agrupa as estatísticas por níveis.
# Criando vetores
vec1 <- c(1001, 1002, 1003, 1004, 1005)
vec2 <- c(0, 1, 1, 0, 2)
vec3 <- c('Verde','Laranja','Azul','Laranja','Verde')
# Unindo os vetores em um dataframe
df <- data.frame(vec1, vec2, vec3)
df
# Verificando que o R categorizou a última coluna como fator
str(df)
# Verificando os níveis do fator. Perceba que os níveis estão categorizados em ordem alfabética
levels(df$vec3)
# Criando uma outra coluna e atribuindo labels
df$cat1 <- factor(df$vec3, labels = c("cor2", "cor1", "cor3"))
df
# Internamente, os fatores são registrados como inteiros, mas a ordenação segue a ordem alfabética
# das strings
str(df)
# Veja como foi feita a atribuição:
# Azul = cor2
# Laranja = cor1
# Verde = cor3
# Ou seja, os vetores com os labels, seguiram a ordem alfabética dos níveis classificados pelo R
# Criando uma outra coluna e atribuindo labels
# Ao aplicarmos a função factor() a coluna vec2, internamente o R classificou em ordem alfabética
# e quando atribuímos os labels, foi feita a associação.
df$cat2 <- factor(df$vec2, labels = c("Divorciado", "Casado", "Solteiro"))
df
str(df)
levels(df$cat2)
#05-Estruturas-de-Controle
# If-else
x = 25
if (x < 30) 
{"Este número é menor que 30"}
# Chaves não são obrigatórios, mas altamente recomendados
if (x < 30) 
  "Este número é menor que 30"
# Else
if (x < 7) {
  "Este número é menor que 7"
} else {
  "Este número não é menor que 7"
}
# Comandos podem ser ainhados
x = 7
if (x < 7) {
  "Este número é menor que 7"
} else if(x == 7) {
  "Este é o número 7"
}else{
  "Este número não é menor que 7"
}
# Ifelse
x = 5
ifelse (x < 6, "Correto!", NA)
x = 9
ifelse (x < 6, "Correto!", NA)
# Expressões ifelse aninhadas
x = c(7,5,4)
ifelse(x < 5, "Menor que 5", 
       ifelse(x == 5, "Igual a 5", "Maior que 5"))
# Estruturas if dentro de funções
func1 <- function(x,y){
  ifelse(y < 7, x + y, "Não encontrado")
}
func1(4,2)
func1(40,7)
# Rep
rep(rnorm(10), 5)
# Repeat
x = 1
repeat {
  x = x + 3
  if (x > 99)
    break
  print(x)}
# Loop For
for (i in 1:20) {print(i)}
for (q in rnorm(10)) {print(q)}
# Ignora alguns elementos dentro do loop
for(i in 1:22){
  if(i == 13 | i == 15)
    next
  print (i)}
# Interromper o loop
for(i in 1:22){
  if(i == 13)
    break
  print (i)}
# Loop While
x = 1
while(x < 5){
  x = x + 1
  print(x)
}
# O loop while não será executado
y = 6
while(y < 5){
  y = y+10
  print(y)
}
#Funcoes
# Help
?sample
args(sample)
args(mean)
args(sd)
# Funções Built-in
abs(-43)
sum(c(1:5))
mean(c(1:5))
round(c(1.1:5.8))
rev(c(1:5))
seq(1:5)
sort(rev(c(1:5)))
append(c(1:5), 6)
vec1 <- c(1.5, 2.5, 8.4, 3.7, 6.3)
vec2 <- rev(vec1)
vec2
# Funções dentro de funções
plot(rnorm(10))
mean(c(abs(vec1), abs(vec2)))
# Criando funções
myfunc <- function(x) { x + x }
myfunc(10)
class(myfunc)
myfunc2 <- function(a, b) {
  valor = a ^ b
  print(valor)
}
myfunc2(3, 2)
jogando_dados <- function() {
  num <- sample(1:6, size = 1) #Local
  num
}
jogando_dados()
# Escopo
print(num)
num <- c(1:6)
num #Global
# Funções sem número definido de argumentos
vec1 <- (10:13)
vec2 <- c("a", "b", "c", "d")
vec3 <- c(6.5, 9.2, 11.9, 5.1)
myfunc3 <- function(...){
  df = data.frame(cbind(...))
  print(df)
}
myfunc3(vec1)
myfunc3(vec2, vec3)
myfunc3(vec1, vec2, vec3)
# Funções Built-in - Não tente recriar a roda
# Comparação de eficiência entre função vetorizada e função "vetorizada no R"
x <- 1:10000000
# Função que calcula a raiz quadrada de cada elemento de um vetor de números
meu_sqrt <- function(numeros) {
  resp <- numeric(length(numeros))
  for(i in seq_along(numeros)) {
    resp[i] <- sqrt(numeros[i])
  }
  return(resp)
}
system.time(x2a <- meu_sqrt(x))
system.time(x2b <- sqrt(x))
# Sua máquina pode apresentar resultado diferente por conta da precisão de cálculo do processador.
identical(x2a, x2b)
#Familia-Apply
#-----------------------------------------------------------------
#  apply() - arrays e matrizes
# tapply() - os vetores podem ser divididos em diferentes subsets
# lapply() - vetores e listas
# sapply() - versão amigável da lapply
# vapply() - similar a sapply, com valor de retorno modificado
# rapply() - similar a lapply()
# eapply() - gera uma lista
# mapply() - similar a sapply, multivariada
# by
#-----------------------------------------------------------------
# Se você estiver trabalhando com os objetos: 
# list, numeric, character (list/vecor) => sapply ou lapply
# matrix, data.frame (agregação por coluna) => by / tapply
# Operações por linha ou operações específicas => apply
# Usando um Loop
lista1 <- list(a = (1:20), b = (35:67))
# Calculando o total de cada elemento da lista com loop for
valor_a = 0
valor_b = 0
for (i in lista1$a){
  valor_a = valor_a + i 
}
for (j in lista1$b){
  valor_b = valor_b + j
}
print(valor_a)
print(valor_b)
# Calculando cada elemento da lista com sapply
?sapply
lapply(lista1, sum)
sapply(lista1,sum)
# Aplicando funções com sapply
sapply(lista1, mean)
# apply()
?apply
x <- matrix(c(20, 13, 65, 32, 45, 12, 76, 49, 82), nr = 3, byrow = T)
x
apply(x, mean)
apply(x, 1, mean)
apply(x, 2, mean)
apply(x, 1, plot)
resultapply <- apply(x, 1, mean)
resultapply
# Aplicando apply() a um Dataframe
escola <- data.frame(Aluno = c('Bob', 'Tereza', 'Marta', 'Felipe', 'Zacarias', 'Elton'),
                     Fisica = c(91, 82, 75, 97, 62, 74),
                     Matematica = c(99, 100, 86, 92, 91, 87),
                     Quimica = c(56, 72, 49, 68, 59, 77))
escola
escola$Matematica
# Calculando a média por aluno
escola$Media = NA
escola
escola$Media = apply(escola[,c(2, 3, 4)], 1, mean)
escola
escola$Media = round(escola$Media)
escola
# tapply()
?gl
tabela_basquete <-
  data.frame(equipe = gl(5, 5, labels = paste("Equipe", LETTERS[1:5])),
             jogador = sample(letters, 25),
             num_cestas = floor(runif(25, min=0, max=50)))
View(tabela_basquete)
summary(tabela_basquete)
# Como calcular o total de cestas por Equipe?
# tapply() vs sqldf
install.packages('sqldf')
library(sqldf)
sqldf("select equipe, sum(num_cestas) from tabela_basquete group by equipe")
?tapply
tapply(tabela_basquete$num_cestas, tabela_basquete$equipe, sum)
tapply(tabela_basquete$num_cestas, tabela_basquete$equipe, mean)
# by
?by
dat <- data.frame(species=c(rep(c(1,2,3), each=5)), 
                  petal.length=c(rnorm(5, 4.5, 1), 
                                 rnorm(5, 4.5, 1), 
                                 rnorm(5, 5.5, 1)), 
                  petal.width=c(rnorm(5, 2.5, 1), 
                                rnorm(5, 2.5, 1), 
                                rnorm(5, 4, 1)))
dat$species <- factor(dat$species)
View(dat)
by(dat, dat$species, function(x){
  # calcular o comprimento médio da pétala para cada espécie
  mean.pl <- mean(x$petal.length)
})
# lapply()
?lapply
lista1 <- list(a = (1:10), b = (45:77))
lista1
lapply(lista1, sum)
sapply(lista1, sum)
# vapply()
?vapply
# A função fivenum() retorna 5 estatísticas do conjunto de dados: (minimum, lower-hinge, median, upper-hinge, maximum) 
# https://stat.ethz.ch/R-manual/R-patched/library/stats/html/fivenum.html
vapply(lista1, 
       fivenum, 
       c(Min. = 0, 
         "1stQu." = 0, 
         Median = 0, 
         "3rd Qu." = 0, 
         Max = 0))
# replicate
?replicate
replicate(7, runif(10))
# mapply()
?mapply
mapply(rep, 1:4, 4:1)
# rapply()
?rapply
lista2 <- list(a = c(1:5), b = c(6:10))
lista2
rapply(lista2, sum)
rapply(lista2, sum, how = "list")
#Funçoes Especiais
# unlist()
# Produz um vetor com os elementos da lista
?unlist
lst1 <- list(6, "b", 15)
lst1
class(lst1)
unlist(lst1)
vec1 <- unlist(lst1)
class(vec1)
vec1
lst2 <- list(v1 = 6, v2 = list(381, 2190), v3 = c(30, 217))
lst2
unlist(lst2)
mean(unlist(lst2))
round(mean(unlist(lst2)))
# do.call()
# Executa uma função em um objeto
# *** ATENÇÃO ***
# As funções da família apply aplicam uma função a cada elemento de um objeto (substitui um loop)
# A função do.call aplica uma função ao objeto inteiro e não a cada elemento individualmente
?do.call
data <- list()
N <- 100
for (n in 1:N) {
  data[[n]] = data.frame(index = n, char = sample(letters, 1), z = rnorm(1))
}
head(data)
do.call(rbind, data)
class(do.call(rbind, data))
# lapply() x do.call()
y <- list(1:3, 4:6, 7:9)
y
lapply(y, sum)
do.call(sum, y)
# O resultado da função lapply() pode ser obtido de outras formas
# Pacote plyr
install.packages('plyr')
library(plyr)
y <- list(1:3, 4:6, 7:9)
y
ldply(y, sum)
# strsplit()
# Divide uma string ou vetor de caracteres
texto <- "Data Science Academy"
strsplit(texto, " ")
texto <- "Data Science Academy"
strsplit(texto, "")
dates <- c("1998-05-23", "2008-12-30", "2009-11-29")
temp  <- strsplit(dates, "-")
temp
class(temp)
# Transforma a lista em matriz, fazendo antes um unlist()
matrix(unlist(temp), ncol = 3, byrow = TRUE)
Names <- c("Brin, Sergey", "Page, Larry",
           "Dorsey, Jack", "Glass, Noah",
           "Williams, Evan", "Stone, Biz")
temp <- strsplit(Names, ", ")
temp
frase <- "Muitas vezes temos que repetir algo diversas vezes e essas diversas vezes parecem algo estranho"
palavras <- strsplit(frase, " ")[[1]]
palavras
unique(tolower(palavras))
# strplit() com dataframes
antes = data.frame(attr = c(1,30,4,6), tipo = c('pao_e_agua','pao_e_agua_2'))
antes
strsplit(as.character(antes$tipo),'_e_')
library(stringr)
str_split_fixed(antes$tipo, "_e_", 2)
# Usando do.call()
antes = data.frame(attr = c(1,30,4,6), tipo = c('pao_e_agua','pao_e_agua_2'))
antes
depois <- strsplit(as.character(antes$tipo),'_e_')
depois
do.call(rbind, depois)
# Usando dplyr e tidyr
install.packages("dplyr")
install.packages("tidyr")
library(dplyr)
library(tidyr)
antes <- data.frame(
  attr = c(1, 30 ,4 ,6 ), 
  tipo = c('pao_e_agua','pao_e_agua_2')
)
antes %>%
  separate(tipo, c("pao", "agua"), "_e_")
#Pacotes-e-Instalacao-de-Pacotes
# De onde vem as funções? Pacotes (conjuntos de funções)
# Quando você inicia o RStudio, alguns pacotes são 
# carregados por padrão
# Busca os pacotes carregados
search()
# Instala e carrega os pacotes
install.packages(c("ggvis", "tm", "dplyr"))
library(ggvis)
library(tm)
require(dplyr)
search()
?require
detach(package:dplyr)
# Lista o conteúdo dos pacotes
?ls
ls(pos = "package:tm")
ls(getNamespace("tm"), all.names = TRUE)
# Lista as funções de um pacote
lsf.str("package:tm")
lsf.str("package:ggplot2")
library(ggplot2)
lsf.str("package:ggplot2")
# R possui um conjunto de datasets preinstalados. 
library(MASS)
data()
?lynx
head(lynx)
head(iris)
tail(lynx)
summary(lynx)
plot(lynx)
hist(lynx)
head(iris)
iris$Sepal.Length
sum(Sepal.Length)
?attach
attach(iris)
sum(Sepal.Length)
#Espressoes Regulares -----------------------------------------------
# grep(pattern, x, ignore.case = FALSE, perl = FALSE, value = FALSE, fixed = FALSE, useBytes = FALSE, invert = FALSE)
# grepl(pattern, x, ignore.case = FALSE, perl = FALSE, fixed = FALSE, useBytes = FALSE)
# sub(pattern, replacement, x, ignore.case = FALSE, perl = FALSE, fixed = FALSE, useBytes = FALSE)
# gsub(pattern, replacement, x, ignore.case = FALSE, perl = FALSE, fixed = FALSE, useBytes = FALSE)
# regexpr(pattern, text, ignore.case = FALSE, perl = FALSE, fixed = FALSE, useBytes = FALSE)
# gregexpr(pattern, text, ignore.case = FALSE, perl = FALSE, fixed = FALSE, useBytes = FALSE)
str <- c("Expressões", "regulares", "em linguagem R", 
         "permitem a busca de padrões", "e exploração de textos",
         "podemos buscar padrões em dígitos",
         "como por exemplo",
         "10992451280")
length(str)
str
# grep()
?grep
grep("ex", str, value = F)
grep("ex", str, value = T)
grep("\\d", str, value = F)
grep("\\d", str, value = T)
# grepl()
?grepl
grepl("\\d+", str)
grepl("\\D", str)
# gsub
?gsub
gsub("em", "***", str)
gsub("ex", "EX", str, ignore.case = T)
# sub()
sub("em", "EM", str)
# regexpr()
frase <- "Isso é uma string."
regexpr(pattern = "u", frase)
# gregexpr()
gregexpr(pattern = "u", frase)
str2 <- c("2678 é maior que 45 - @???!§$",
          "Vamos escrever 14 scripts R")
str2
# gsub()
gsub("\\d", "", str2)
gsub("\\D", "", str2)
gsub("\\s", "", str2)
gsub("[iot]", "Q", str2)
gsub("[[:punct:]]", "", str2)
# Datas e Hora----------------------------------------------------
# Hora e Data do sistema
hoje <- Sys.Date()
hoje
class(hoje)
Sys.time()
Sys.timezone()
# Data - representada por Date
# Armazenados como número de dias desde 1 de Janeiro de 1970
# Time - representado por POSIXct
# Armazenados como número de segundos desde 1 de Janeiro de 1970
# Formatando Datas
# %d: dia do mês em 2 dígitos (13)
# %m: mês em 2 digitos (01)
# %y: ano em 2 dígitos (82)
# %Y: ano em 4 dígitos (1982)
# %A: dia da semana (Friday)
# %a: dia da semana abreviado (Fri)
# %B: mês (July)
# %b: mês abreviado (Jul)
# Formatando hora
# %H: hora (00-23)
# %M: minuto
# %S: segundo
# %T: formado reduzido para %H:%M:%S
?strptime
# Formatando a saída - as.Date()
as.Date("2018-06-28")
as.Date("Jun-28-18", format = "%b-%d-%y")
as.Date("28 June, 2018", format = "%d %B, %Y")
# Função format()
Sys.Date()
?format
format(Sys.Date(), format = "%d %B, %Y")
format(Sys.Date(), format = "Hoje é %A!")
# Convertendo Datas - as.POSIXct
date1 <- "Jun 13, '96 hours:23 minutes:01 seconds:45"
date1_convert <- as.POSIXct(date1, format = "%B %d, '%y hours:%H minutes:%M seconds:%S")
date1_convert
# Operações com Datas
data_de_hoje <- as.Date("2016-06-25", format = "%Y-%m-%d")
data_de_hoje
data_de_hoje + 1
my_time <- as.POSIXct("2016-05-14 11:24:134")
my_time
my_time + 1
data_de_hoje - as.Date(my_time)
data_de_hoje - my_time
# Convertendo Data em formato específico
# O vetor de números pode representar o número de dias, horas ou minutos (de acordo com o que você quer converter)
# A Linguagem R considera o ponto de início a data de 01 de Janeiro de 1970 e contabiliza o total
# de horas, minutos ou segundos, aquilo que o vetor numérico representar
dts = c(1127056501,1104295502,1129233601,1113547501,1119826801,1132519502,1125298801,1113289201)
mydates = dts
# POSIXct, armazena os segundos desde uma data específica, 
# convertendo os valores numéricos (que podem representar horas, minutos ou segundos) desde 01 de Janeiro de 1970
# POSIXt é a classe principal e POSIXct e POSIXlt são subclasses. 
# Poderíamos usar aqui apenas POSIXct, que é a subclasse (mas não podemos usar apenas a classe principal)
class(mydates) = c('POSIXt','POSIXct')
mydates
class(mydates)
mydates = structure(dts, class = c('POSIXt','POSIXct'))
mydates
# Função ISODate
b1 = ISOdate(2011,3,23)
b1
b2 = ISOdate(2012,9,19)
b2
b2 - b1
difftime(b2, b1, units = 'weeks')
# Pacote lubridate
?lubridate
install.packages("lubridate")
require(lubridate)
ymd("20180604") 
mdy("06-04-2018") 
dmy("04/06/2018")
chegada <- ymd_hms("2016-06-04 12:00:00", tz = "Pacific/Auckland")
partida <- ymd_hms("2011-08-10 14:00:00", tz = "Pacific/Auckland")
chegada
partida
second(chegada)
second(chegada) <- 23
chegada
wday(chegada)
wday(chegada, label = TRUE)
class(chegada)
# Cria um objeto que especifica a data de início e data de fim
interval(chegada, partida)
tm1.lub <- ymd_hms("2020-05-24 23:55:26")
tm1.lub
tm2.lub <- mdy_hm("05/25/20 08:32")
tm2.lub
year(tm1.lub)
week(tm1.lub)
tm1.dechr <- hour(tm1.lub) + minute(tm1.lub)/60 + second(tm1.lub)/3600
tm1.dechr
force_tz(tm1.lub, "Pacific/Auckland")
# Gerando um dataframe de datas
sono <- data.frame(bed.time = ymd_hms("2013-09-01 23:05:24", "2013-09-02 22:51:09", 
                                      "2013-09-04 00:09:16", "2013-09-04 23:43:31", "2013-09-06 00:17:41", "2013-09-06 22:42:27", 
                                      "2013-09-08 00:22:27"), rise.time = ymd_hms("2013-09-02 08:03:29", "2013-09-03 07:34:21", 
                                                                                  "2013-09-04 07:45:06", "2013-09-05 07:07:17", "2013-09-06 08:17:13", "2013-09-07 06:52:11", 
                                                                                  "2013-09-08 07:15:19"), sleep.time = dhours(c(6.74, 7.92, 7.01, 6.23, 6.34, 7.42, 6.45)))
sono
sono$eficiencia <- round(sono$sleep.time/(sono$rise.time - sono$bed.time) * 100, 1)
sono
# Gerando um plot a partir de datas
par(mar = c(5, 4, 4, 4))
plot(round_date(sono$rise.time, "day"), sono$eficiencia, type = "o", col = "blue", xlab = "Manhã", ylab = NA)
par(new = TRUE)
plot(round_date(sono$rise.time, "day"), sono$sleep.time/3600, type = "o", col = "red", axes = FALSE, ylab = NA, xlab = NA)
axis(side = 4)
mtext(side = 4, line = 2.5, col = "red", "Duração do Sono")
mtext(side = 2, line = 2.5, col = "blue", "Eficiência do Sono")
#OperadoresAtrib--------------------------------------------------------------------
vec1 = 1:4
vec2 <- 1:4
class(vec1)
class(vec2)
typeof(vec1)
typeof(vec2)
mean(x = 1:10)
x   
mean(x <- 1:10)
x
#--------------------------Graficos---------------------------------------------------
# Lista de pacotes base carregados
search()
# Demo
demo("graphics")
# Plot Básico
x = 5:7
y = 8:10
plot(x,y)
?plot
altura <- c(145, 167, 176, 123, 150)
largura <- c(51, 63, 64, 40, 55)
plot(altura, largura)
# Plotando um Dataframe
?lynx
plot(lynx)
plot(lynx, ylab = "Plots com Dataframes", xlab = "")
plot(lynx, ylab = "Plots com Dataframes", xlab = "Observações")
plot(lynx, main = "Plots com Dataframes", col = 'red')
plot(lynx, main = "Plots com Dataframes", col = 'red', col.main = 52, cex.main = 1.5)
library(datasets)
hist(warpbreaks$breaks)
airquality
transform(airquality, Month = factor(Month))
boxplot(Ozone ~ Month, airquality, xlab = "Month", ylab = "Ozone (ppb)")
# Especificando os parâmetros
# col - cor do plot
# lty - tipo de linha
# lwd - largura de linha
# pch - símbolo no plot
# xlab - label do eixo x
# ylab - label do eixo y
# las - como os labels dos eixos são orientados
# bg - background color
# mfrow - número de plots por linha
# mfcool - número de plots por coluna
# Funções Básicas de Plot
# plot() - scatterplots
# lines() -  adiciona linhas ao gráfico
# points() - adiciona pontos ao gráfico
# text() - adiciona label ao gráfico
# title() - adiciona título ao gráfico
# Parâmetros dos Gráficos
?par
par()
par('pch')
par('lty')
x = 2:4
plot(x, pch = "*")
par(mfrow = c(2,2), col.axis = "red")
plot(1:8, las = 0, xlab = "xlab", ylab = "ylab", main = "LAS = 0")
plot(1:8, las = 1, xlab = "xlab", ylab = "ylab", main = "LAS = 1")
plot(1:8, las = 2, xlab = "xlab", ylab = "ylab", main = "LAS = 2")
plot(1:8, las = 3, xlab = "xlab", ylab = "ylab", main = "LAS = 3")
legend("topright", pch = 1, col = c("blue", "red"), legend = c("Var1","Var2"))
par(mfrow = c(1,1))
# Cores disponíveis
colors()
# Salvando os gráficos
# png
png("Grafico1.png", width = 500, height = 500, res = 72)
plot(iris$Sepal.Length, iris$Petal.Length,
     col = iris$Species,
     main = "Gráfico gerado a partir do Iris")
dev.off()
# pdf
pdf("Grafico2.pdf")
plot(iris$Sepal.Length, iris$Petal.Length,
     col = iris$Species,
     main = "Gráfico gerado a partir do Iris")
dev.off()
# Estendendo as funções do plot
install.packages('plotrix')
library(plotrix)
?plotrix
par(mfrow = c(1,1), col.axis = "red")
plot(1:6, las = 3, xlab = "lty 1:6", ylab = "", main = "Mais opções ao plot")
ablineclip(v=1, lty=1, col="sienna2", lwd=2)
ablineclip(v=2, lty=1, col="sienna2", lwd=2)
ablineclip(v=3, lty=1, col="sienna2", lwd=2)
ablineclip(v=4, lty=1, col="sienna2", lwd=2)
ablineclip(v=5, lty=1, col="sienna2", lwd=2)
ablineclip(v=6, lty=1, col="sienna2", lwd=2)
ablineclip(v=7, lty=1, col="sienna2", lwd=2)
plot(lynx)
plot(lynx, type="p", main="Type p")
plot(lynx, type="l", main="Type l")
plot(lynx, type="b", main="Type b")
plot(lynx, type="o", main="Type o")
plot(lynx, type="h", main="Type h")
plot(lynx, type="s", main="Type s")
plot(lynx, type="n", main="Type n")
# Dois plots juntos
par(mar=c(4,3,3,3), col.axis="black")
plot(cars$speed, type="s", col="red", bty="n", xlab="Cars ID", ylab="")
text(8, 14, "Velocidade", cex=0.85, col="red") 
par(new=T) 
plot(cars$dist, type="s", bty="n", ann=F, axes=F, col="darkblue")
axis(side=4)
text(37, 18, "Distância", cex=0.85, col="darkblue") 
title(main="Velocidade x Distância")
# Plots a partir de datasets
df <- read.csv('pibpercap.csv', stringsAsFactors = F)
df_1982 <- subset(df, ano == 1982)
plot(expectativa ~ pibpercap, data = df_1982, log = "x")
View(df)
# Nomes paar as colunas
mycol <- c(Asia = "tomato", Europe = "chocolate4", Africa = "dodgerblue2", 
           Americas = "darkgoldenrod1", Oceania = "green4")
# Plot
plot(expectativa ~ pibpercap, data = df_1982, log = "x", col = mycol[continente])
# Função para a escala
mycex <- function(var, r, f = sqrt){
  x = f(var)
  x_scaled = (x - min(x))/(max(x) - min(x))
  r[1] + x_scaled * (r[2] - r[1])
}
# Plot
plot(expectativa ~ pibpercap, data = df_1982, log = "x",
     col = mycol[continente],
     cex = mycex(pop, r = c(0.2, 10))
)
#--------------ScatterPlot---------
# Define os dados
set.seed(67)
x = rnorm(10,5,7)
y = rpois(10,7)
z = rnorm(10,6,7)
t = rpois(10,9)
# Cria o Plot
plot(x, y, col = 123, pch = 10, main = "Multi Scatterplot",
     col.main = "red", cex.main = 1.5, xlab = "Variável Independente", 
     ylab = "Variável Dependente")
# Adiciona outros dados 
points(z, t, col = "blue", pch = 4)
# Adiciona outros dados 
points(y, t, col = 777, pch = 9)
# Cria legenda
legend(-6,5.9, legend = c("Nível 1", "Nível 2", "Nível 3"),
       col = c(123, "blue", 777), pch = c(10,4,9),
       cex = 0.65, bty = "n")
#--------------BoxPlot---------
?boxplot
?sleep
# Permite utilizar as colunas sem especificar o nome do dataset
attach(sleep)
View(sleep)
# Construção do boxplot
sleepboxplot = boxplot(data = sleep, extra ~ group,
                       main = "Duração do Sono",
                       col.main = "red", ylab = "Horas", xlab = "Droga")
# Cálculo da média
medias = by(extra, group, mean)
# Adiciona a média ao gráfico
points(medias, col = "red")
# Boxplot horizontal
horizontalboxplot = boxplot(data = sleep, extra ~ group,
                            ylab = "", xlab = "", horizontal = T)
horizontalboxplot = boxplot(data = sleep, extra ~ group,
                            ylab = "", xlab = "", horizontal = T,
                            col = c("blue", "red") )
#--------------Histogramas---------
# Definindo os dados
?cars
View(cars)
dados = cars$speed
# Construindo um histograma
?hist
hist(dados)
# Conforme consta no help, o parâmetro breaks pode ser um dos itens abaixo:
# Um vetor para os pontos de quebra entre as células do histograma
# Uma função para calcular o vetor de breakpoints
# Um único número que representa o número de células para o histograma
# Uma cadeia de caracteres que nomeia um algoritmo para calcular o número de células 
# Uma função para calcular o número de células.
hist(dados, breaks = 10, main = "Histograma das Velocidades")
hist(dados, labels = T, breaks = c(0,5,10,20,30), main = "Histograma das Velocidades")
hist(dados, labels = T, breaks = 10, main = "Histograma das Velocidades")
hist(dados, labels = T, ylim = c(0,10), breaks = 10, main = "Histograma das Velocidades")
# Adicionando linhas ao histograma
grafico <- hist(dados, breaks = 10, main = "Histograma das Velocidades")
xaxis = seq(min(dados), max(dados), length = 10)
yaxis = dnorm(xaxis, mean = mean(dados), sd = sd(dados))
yaxis = yaxis*diff(grafico$mids)*length(dados)
lines(xaxis, yaxis, col = "red")
#--------------BarPlots---------
?barplot
# Preparando os dados - número de casamentos em uma igreja de SP
dados <- matrix(c(652,1537,598,242,36,46,38,21,218,327,106,67), nrow = 3, byrow = T)
dados
# Nomeando linhas e colunas na matriz
colnames(dados) <- c("0","1-150","151-300",">300")
rownames(dados) <- c("Jovem","Adulto","Idoso")
dados
# Construindo o Barplot
barplot(dados, beside = T)
barplot(dados)
# Construindo o plot - Stacked Bar Plot
# As 3 faixas de idade são representadas na mesma coluna para as diferentes quantidades
barplot(dados, col = c("steelblue1", "tan3", "seagreen3"))
# Crie uma legenda para o gráfico anterior
colors()
legend("topright", pch = 1, col = c("steelblue1", "tan3", "seagreen3"), legend = c("Jovem","Adulto","Idoso"))
# Agora temos uma coluna para cada faixa etária, mas na mesma faixa de quantidade
barplot(dados, beside = T, col = c("steelblue1", "tan3", "seagreen3"))
legend("topright", pch = 1, col = c("steelblue1", "tan3", "seagreen3"), legend = c("Jovem","Adulto","Idoso"))
# Com a Transposta da matriz, invertemos as posições entre faixa etária e faixa de quantidade
t(dados)
barplot(t(dados), beside = T, col = c("steelblue1", "tan3", "seagreen3", "peachpuff1"))
legend("topright", pch = 1, col = c("steelblue1", "tan3", "seagreen3", "peachpuff1"), legend = c("0","1-150","151-300",">300"))
#--------------Pie---------
?pie
# Criando as fatias
fatias = c(40, 20, 40)
# Nomeando os labels
paises = c("Brasil", "Argentina", "Chile")
# Unindo paises e fatias
paises = paste(paises, fatias)
# Incluindo mais detalhes no label
paises = paste(paises, "%", sep = "")
colors()
# Construindo um gráfico
pie(fatias, labels = paises,
    col = c("darksalmon", "gainsboro", "lemonchiffon4"), 
    main ="Dsitribuição de Vendas")
# Trabalhando com dataframes
?iris
attach(iris)
Values = table(Species) 
labels = paste(names(Values))
pie(Values, labels = labels, main = "Distribuição de Espécies")
# 3D
install.packages("plotrix")
library(plotrix)
pie3D(fatias, labels = paises, explode = 0.05,
      col = c("steelblue1", "tomato2", "tan3"), 
      main = "Dsitribuição de Vendas")
###------------------------------------------ggplot2--------------------------------------------####
# Um sistema gráfico completo, alternativo ao sistema básico de gráficos do R.
# Oferece mais opções de modificação, legendas prontas e formatação mais sólida.
# https://cran.r-project.org/web/packages/ggplot2/ggplot2.pdf
# https://www.rstudio.com/wp-content/uploads/2015/03/ggplot2-cheatsheet.pdf
# Instalando e carregando o pacote
install.packages("ggplot2")
library(ggplot2)
# Plotando um gráfico básico com qplot()
data(tips, package = 'reshape2')
View(tips)
qplot(total_bill, tip, data = tips, geom = "point")
# Camada 1
camada1 <- geom_point(
  mapping = aes(x = total_bill, y = tip, color = sex),
  data = tips,
  size = 3
)
ggplot() + camada1
?aes
??aes
# Contruindo um modelo de regressão
modelo_base <- lm(tip ~ total_bill, data = tips)
modelo_fit <- data.frame(
  total_bill = tips$total_bill, 
  predict(modelo_base, interval = "confidence")
)
head(modelo_fit)
# Camada 2
camada2 <- geom_line(
  mapping = aes(x = total_bill, y = fit),
  data = modelo_fit,
  color = "darkred"
)
ggplot() + camada1 + camada2
# Camada 3
camada3 <- geom_ribbon(
  mapping = aes(x = total_bill, ymin = lwr, ymax = upr),
  data = modelo_fit,
  alpha = 0.3
)
ggplot() + camada1 + camada2 + camada3
# Versão final otimizada
ggplot(tips, aes(x = total_bill, y = tip)) +
  geom_point(aes(color = sex)) +
  geom_smooth(method = 'lm')
# Gravando o gráfico em um objeto
myplot <- ggplot(tips, aes(x = total_bill, y = tip)) +
  geom_point(aes(color = sex)) +
  geom_smooth(method = 'lm')
class(myplot)
print(myplot)
# ScatterPlot com linha de regressão
# Dados
data = data.frame(cond = rep(c("Obs 1", "Obs 2"), 
                             each = 10), var1 = 1:100 + 
                    rnorm(100,sd = 9), var2 = 1:100 + 
                    rnorm(100,sd = 16))
# Plot
ggplot(data, aes(x = var1, y = var2)) +    
  geom_point(shape = 1) +  
  geom_smooth(method = lm , color = "red", se = FALSE)  
?lm
# Bar Plot
# Dados
data = data.frame(grupo = c("A ","B ","C ","D ") , 
                  valor = c(33,62,56,67) , 
                  num_obs = c(100,500,459,342))
# Gerando a massa de dados
data$right = cumsum(data$num_obs) + 30 * c(0:(nrow(data)-1))
data$left = data$right - data$num_obs 
# Plot
ggplot(data, aes(ymin = 0)) + 
  geom_rect(aes(xmin = left, xmax = right, 
                ymax = valor, colour = grupo, fill = grupo)) +
  xlab("Número de Observações") + ylab("Valor")
# Usando mtcars
head(mtcars)
ggplot(data = mtcars, aes(x = disp, y = mpg)) + geom_point()
# Outro aspecto que pode ser mapeado nesse gráfico é a cor dos pontos
ggplot(data = mtcars, 
       aes(x = disp, y = mpg, 
           colour = as.factor(am))) + geom_point()
# No entanto, tambem podemos mapear uma variável contínua à cor dos pontos:
View(mtcars)
ggplot(mtcars, aes(x = disp, y = mpg, colour = cyl)) + geom_point()
# Também podemos mapear o tamanho dos pontos à uma variável de interesse:
# A legenda é inserida no gráfico automaticamente
ggplot(mtcars, aes(x = disp, y = mpg, colour = cyl, size = wt)) + geom_point()
# Os geoms definem qual forma geométrica será utilizada para a visualização dos dados no gráfico. 
ggplot(mtcars, aes(x = as.factor(cyl), y = mpg)) + geom_boxplot()
# Histogramas
ggplot(mtcars, aes(x = mpg), binwidth = 30) + geom_histogram()
# Gráfico de Barras
ggplot(mtcars, aes(x = as.factor(cyl))) + geom_bar()
# Personalizando os gráficos
colors()
ggplot(mtcars, aes(x = as.factor(cyl), y = mpg, 
                   colour = as.factor(cyl))) + geom_boxplot()
ggplot(mtcars, aes(x = as.factor(cyl), y = mpg, 
                   fill = as.factor(cyl))) + geom_boxplot()
ggplot(mtcars, 
       aes(x = as.factor(cyl), y = mpg)) + 
  geom_boxplot(color = "blue", fill = "seagreen4")
# Podemos alterar os eixos
ggplot(mtcars, aes(x = mpg)) + 
  geom_histogram() + 
  xlab("Milhas por galão") + ylab("Frequência")
# Legendas
ggplot(mtcars, aes(x = as.factor(cyl), fill = as.factor(cyl))) + 
  geom_bar() +
  labs(fill = "cyl")
# Trocando a posição da legenda
ggplot(mtcars, aes(x = as.factor(cyl), fill = as.factor(cyl))) + 
  geom_bar() +
  labs(fill = "cyl") +
  theme(legend.position = "top")
# Sem legenda
ggplot(mtcars, aes(x = as.factor(cyl), fill = as.factor(cyl))) + 
  geom_bar() +
  guides(fill = FALSE)
# Facets
ggplot(mtcars, aes(x = mpg, y = disp, colour = as.factor(cyl))) + 
  geom_point() + 
  facet_grid(am~.)
ggplot(mtcars, aes(x = mpg, y = disp, colour = as.factor(cyl))) +
  geom_point() + 
  facet_grid(.~am)
# Plots diferentes juntos (diferente de Facet)
install.packages("gridExtra")
library(gridExtra)
library(ggplot2)
# Dataset diamonds
data(diamonds)
# Histograma como plot1
plot1 <- qplot(price, data = diamonds, binwidth = 1000)
# ScatterPlot como plot2
plot2 <- qplot(carat, price, data = diamonds, colour = cut)
# Combina os 2 plots na mesma área
grid.arrange(plot1, plot2, ncol = 1)
# Gráficos de Densidade
ggplot(data = diamonds, aes(x = price, group = cut, fill = cut)) + 
  geom_density(adjust = 1.5)
ggplot(data = diamonds, aes(x = price, group = cut, fill = cut)) + 
  geom_density(adjust = 1.5 , alpha = 0.2)
ggplot(data = diamonds,aes(x = price, group = cut, fill = cut)) + 
  geom_density(adjust = 1.5, position = "fill")
# Facets com reshape
install.packages("reshape2")
install.packages("plotly")
library(reshape2)
library(plotly)
sp <- ggplot(tips, aes(x = total_bill, y = tip/total_bill)) + geom_point(shape = 1)
sp + facet_grid(sex ~ .)
ggplotly()
sp + facet_grid(. ~ sex)
ggplotly()
sp + facet_wrap( ~ day, ncol = 2)
ggplotly()
ggplot(mpg, aes(displ, hwy)) + geom_point() + facet_wrap(~manufacturer)
ggplotly()
####-----------------------------------Lattice---------------------------------####
# O pacote Lattice é um sistema de visualização de dados 
# de alto nível poderoso e elegante, com ênfase em dados 
# multivariados. 
# Na criação de gráficos, condições e agrupamentos são 2 conceitos
# importantes, que nos permitem compreender mais facilmente
# os dados que temos em mãos. O conceito por trás do Lattice
# é agrupar os dados e criar visualizaçãoes de forma que fique 
# mais fácil a busca por padrões.
# Instala e carrega o pacote
install.packages('lattice')
library(lattice)
# ScatterPlot com Lattice
View(iris)
xyplot(data = iris, groups = Species, Sepal.Length ~ Petal.Length)
# BarPlots com dataset Titanic
?Titanic
barchart(Class ~ Freq | Sex + Age, data = as.data.frame(Titanic),
         groups = Survived, stack = T, layout = c(4, 1),
         auto.key = list(title = "Dados Titanic", columns = 2))
barchart(Class ~ Freq | Sex + Age, data = as.data.frame(Titanic),
         groups = Survived, stack = T, layout = c(4, 1),
         auto.key = list(title = "Dados Titanic", columns = 2),
         scales = list(x = "free"))
# Contagem de elementos
PetalLength <- equal.count(iris$Petal.Length, 4)
PetalLength
# ScatterPlots
xyplot(Sepal.Length~Sepal.Width | PetalLength, data = iris)
xyplot(Sepal.Length~Sepal.Width | PetalLength, data = iris,
       panel = function(...) {
         panel.grid(h = -1, v = -1, col.line = "skyblue")
         panel.xyplot(...)})
xyplot(Sepal.Length~Sepal.Width | PetalLength, data = iris,
       panel = function(x,y,...) {
         panel.xyplot(x,y,...)
         mylm <- lm(y~x)
         panel.abline(mylm)})
histogram(~Sepal.Length | Species, xlab = "",
          data = iris, layout=c(3,1), type = "density",
          main = "Histograma Lattice", sub = "Iris Dataset, Sepal Length")
# Distribuição dos dados
qqmath(~ Sepal.Length | Species, data = iris, distribution = qunif)
# Boxplot
bwplot(Species~Sepal.Length, data = iris)
# ViolinPlot
bwplot(Species~Sepal.Length, data = iris,
       panel = panel.violin)
###------------------------------------------Mapas-------------------------------------------####
# Instala os pacotes
install.packages(c("ggplot2", "maps", "mapdata"))
# Carrega os pacotes
library(ggplot2)
library(maps)
library(mapdata)
# Função para buscar as coordenadas dos países
?map_data
mapa <- map_data("world")
# Visualizando o dataframe
dim(mapa)
View(mapa)
# Gerando o Mapa
ggplot() + geom_polygon(data = mapa, aes(x=long, y = lat, group = group)) + 
  coord_fixed(1.3)
ggplot() + 
  geom_polygon(data = mapa, aes(x=long, y = lat, group = group), fill = NA, color = "blue") + 
  coord_fixed(1.3)
gg1 <- ggplot() + 
  geom_polygon(data = mapa, aes(x=long, y = lat, group = group), fill = "seagreen1", color = "blue") + 
  coord_fixed(1.3)
gg1
# Marcando alguns pontos no mapa
# Podemos usar um shapefile
labs <- data.frame(
  long = c(69.24140, -2.8456051),
  lat = c(-78.38995, 22.44512),
  names = c("Ponto1", "Ponto2"),
  stringsAsFactors = FALSE
)  
# Pontos no mapa
gg1 + 
  geom_point(data = labs, aes(x = long, y = lat), color = "black", size = 2) +
  geom_point(data = labs, aes(x = long, y = lat), color = "yellow", size = 2)
# Divisão por países
ggplot(data = mapa) + 
  geom_polygon(aes(x = long, y = lat, fill = region, group = group), color = "white") + 
  coord_fixed(1.3) +
  guides(fill=FALSE)
# rMaps 
# http://rmaps.github.io
####------------------------------Big Data na Pratica 2-----------------------------------------###
# Baseado no Google Chart (visualização de dados na web)
# googlevis é um pacote que fornece interface entre R e o Google Charts
# Utiliza JavaScript e arquivos JSON. Os dados são transformados em formato JSON
# O resultado é gerado em HTML5 ou Flash
# Pode-se criar os mais variados tipos de gráficos e mapas. Inclusive Google Maps
# Você pode incorporar os gráficos criados em páginas HTML ou apps
# Verifique termos de uso, antes de utilizar
install.packages("googleVis")
library(googleVis)
?googleVis
# Criando um Datafrane
df = data.frame(País = c("BR", "CH", "AR"), 
                Exportações = c(10,13,14), 
                Importações = c(23,12,32))
# Gráfico de Linha
Line <- gvisLineChart(df)
plot(Line)
# Gráfico de Barras
Column <- gvisColumnChart(df)
plot(Column)
# Gráfico de Barras Horizontais
Bar <- gvisBarChart(df)
plot(Bar)
# Gráfico de Pizza
Pie <- gvisPieChart(CityPopularity)
plot(Pie)
# Gráficos Combinados
Combo <- gvisComboChart(df, xvar = "País",
                        yvar = c("Exportações", "Importações"),
                        options = list(seriesType = "bars",
                                       series='{1: {type:"line"}}'))
plot(Combo)
# Scatter Chart
Scatter <- gvisScatterChart(women, 
                            options=list(
                              legend="none",
                              lineWidth=2, pointSize=0,
                              title="Women", vAxis="{title:'weight (lbs)'}",
                              hAxis="{title:'height (in)'}", 
                              width=300, height=300))
plot(Scatter)
# Bubble
Bubble <- gvisBubbleChart(Fruits, idvar="Fruit", 
                          xvar="Sales", yvar="Expenses",
                          colorvar="Year", sizevar="Profit",
                          options=list(
                            hAxis='{minValue:75, maxValue:125}'))
plot(Bubble)
# Customizando
M <- matrix(nrow=6,ncol=6)
M[col(M)==row(M)] <- 1:6
dat <- data.frame(X=1:6, M)
SC <- gvisScatterChart(dat, 
                       options=list(
                         title="Customizing points",
                         legend="right",
                         pointSize=30,
                         series="{
                         0: { pointShape: 'circle' },
                         1: { pointShape: 'triangle' },
                         2: { pointShape: 'square' },
                         3: { pointShape: 'diamond' },
                         4: { pointShape: 'star' },
                         5: { pointShape: 'polygon' }
                         }"))
plot(SC)
# Gauge
Gauge <- gvisGauge(CityPopularity, 
                   options=list(min=0, max=800, greenFrom=500,
                                greenTo=800, yellowFrom=300, yellowTo=500,
                                redFrom=0, redTo=300, width=400, height=300))
plot(Gauge)
# Mapas
Intensity <- gvisIntensityMap(df)
plot(Intensity)
# Geo Chart
Geo=gvisGeoChart(Exports, locationvar="Country", 
                 colorvar="Profit",
                 options=list(projection="kavrayskiy-vii"))
plot(Geo)
# Google Maps
AndrewMap <- gvisMap(Andrew, "LatLong" , "Tip", 
                     options=list(showTip=TRUE, 
                                  showLine=TRUE, 
                                  enableScrollWheel=TRUE,
                                  mapType='terrain', 
                                  useMapTypeControl=TRUE))
plot(AndrewMap)
# Dados em Gráfico. Nível de analfabetismo nos EUA
require(datasets)
states <- data.frame(state.name, state.x77)
GeoStates <- gvisGeoChart(states, "state.name", "Illiteracy",
                          options=list(region="US", 
                                       displayMode="regions", 
                                       resolution="provinces",
                                       width=600, height=400))
plot(GeoStates)
####------------------------------------ Arquivos TXT -----------------------------###
# Usando as funções base do R (pacote utils)
search()
# Importando arquivo com read.table()
?read.table
df1 <- read.table("pedidos.txt")
df1
dim(df1)
df1 <- read.table("pedidos.txt", header = TRUE, sep = ',')
df1
dim(df1)
df1 <- read.table("pedidos.txt", header = TRUE, sep = ',', 
                  col.names = c("var1", "var2", "var3"))
df1
df1 <- read.table("pedidos.txt", header = TRUE, 
                  sep = ',', 
                  col.names = c("var1", "var2", "var3"),
                  na.strings = c('Zico', 'Maradona'))
df1
str(df1)
df1 <- read.table("pedidos.txt", header = TRUE, 
                  sep = ',', 
                  col.names = c("var1", "var2", "var3"),
                  na.strings = c('Zico', 'Maradona'),
                  stringsAsFactors = FALSE)
df1
str(df1)
# Importando arquivo com read.csv()
df2 <- read.csv("pedidos.txt")
df2
dim(df2)
df3 <- read.csv2("pedidos.txt")
df3
dim(df3)
df3 <- read.csv2("pedidos.txt", sep = ',')
df3
dim(df3)
# Importando arquivo com read.delim()
df4 <- read.delim("pedidos.txt")
df4
df4 <- read.delim("pedidos.txt", sep = ',')
df4
dim(df4)
# Importando / Exportando
#Gerando arquivo
write.table(mtcars, file = 'mtcars.txt')
dir()
df_mtcars <- read.table("mtcars.txt")
df_mtcars
dim(df_mtcars)
write.table(mtcars, file = "mtcars2.txt", sep = "|", col.names = NA, qmethod = "double")
list.files()
read.table("mtcars2.txt")
df_mtcars2 <- read.table("mtcars2.txt")
df_mtcars2
df_mtcars2 <- read.table("mtcars2.txt", sep = '|')
df_mtcars2
df_mtcars2 <- read.table("mtcars2.txt", sep = '|', encoding = 'UTF-8')
df_mtcars2
####------------------------------------ Arquivos CSV -----------------------------###
# Usando o pacote readr 
install.packages("readr")
library(readr)
# Abre o promt para escolher o arquivo
meu_arquivo <- read_csv(file.choose())
# Importando arquivos
df1 <- read_table("temperaturas.txt", 
                  col_names = c("DAY","MONTH","YEAR","TEMP"))
head(df1)
View(df1)
str(df1)
read_lines("temperaturas.txt", skip = 0, n_max = -1L)
read_file("temperaturas.txt")
# Exportando e Importando
write_csv(iris, "iris.csv")
dir()
# col_integer(): 
# col_double(): 
# col_logical(): 
# col_character(): 
# col_factor(): 
# col_skip(): 
# col_date() (alias = “D”), col_datetime() (alias = “T”), col_time() (“t”) 
df_iris <- read_csv("iris.csv", col_types = list(
  Sepal.Length = col_double(),
  Sepal.Width = col_double(),
  Petal.Length = col_double(),
  Petal.Width = col_double(),
  Species = col_factor(c("setosa", "versicolor", "virginica"))
))
dim(df_iris)
str(df_iris)
# Manipulando arquivos csv
df_cad <- read_csv("cadastro.csv")
View(df_cad)
class(df_cad)
install.packages("dplyr")
library(dplyr)
options(warn=-1)
df_cad <- tbl_df(df_cad)
head(df_cad)
View(df_cad)
write.csv(df_cad, "df_cad_bkp.csv")
# Importando vários arquivos simultaneamente
list.files()
lista_arquivos <- list.files('C:/FCD/BigDataRAzure/Cap05/arquivos', full.names = TRUE)
class(lista_arquivos)
lista_arquivos
lista_arquivos2 <- lapply(lista_arquivos, read_csv)
class(lista_arquivos2)
View(lista_arquivos2)
# Parsing
parse_date("01/02/15", "%m/%d/%y")
parse_date("01/02/15", "%d/%m/%y")
parse_date("01/02/34", "%y/%m/%d")
locale("en")
locale("fr")
locale("pt")
####------------------------------------ Arquivos EXCEL -----------------------------###
# Instalar o Java - JDK 
# https://www.oracle.com/technetwork/java/javase/downloads/index.html
# Windows
# Faça o download do JDK gratuitamente no site da Oracle
# Instale no seu computador
# Configure a variável de ambiente JAVA_HOME apontantando para o diretório de instalação do JDK
# Inclua o diretório JAVA_HOME/bin na variável de ambiente PATH
# Mac e Linux
# Faça o download do JDK gratuitamente no site da Oracle
# Instale no seu computador
# Abra um terminal e execute: sudo R CMD javareconf
# ********** Pacotes que requerem Java **********
# XLConnect
# xlsx
# rJava 
# ********** Pacotes que requerem Perl **********
# É necessário instalar o interpretador da linguagem Perl e adicionar o diretório bin da instalação do Perl
# na variável de ambiente PATH
# Download: https://www.activestate.com/products/activeperl/
# gdata
# Instalando os pacotes
install.packages('rJava')
install.packages("xlsx")
install.packages("XLConnect")
install.packages("readxl")
install.packages("gdata")
# Este pacote deve estar carregado para poder usar todos os pacotes que requerem Java
library(rJava)
# Obs: Ao carregar todos os pacotes que manipulam excel, pode gerar problema de namespace, pois alguns pacotes
# possuem o mesmo nome de funções (que são diferentes entre os pacotes). Para evitar problemas, carregue e use
# os pacotes de forma individual (não carregue todos os pacotes de uma única vez).
# Pacote readxl
library(readxl)
# Lista as worksheet no arquivo Excel
excel_sheets("UrbanPop.xlsx")
# Lendo a planilha do Excel
read_excel("UrbanPop.xlsx")
head(read_excel("UrbanPop.xlsx"))
read_excel("UrbanPop.xlsx", sheet = "Period2")
read_excel("UrbanPop.xlsx", sheet = 3)
read_excel("UrbanPop.xlsx", sheet = 4)
# Importando uma worksheet para um dataframe
df <- read_excel("UrbanPop.xlsx", sheet = 3)
head(df)
# Importando todas as worksheets
df_todas <- lapply(excel_sheets("UrbanPop.xlsx"), read_excel, path = 'UrbanPop.xlsx')
df_todas
class(df_todas)
# Pacote XLConnect
detach(package:readxl)
library(XLConnect)
# Namespace
arq1 = XLConnect::loadWorkbook("UrbanPop.xlsx")
df1 = readWorksheet(arq1, sheet = "Period1", header = TRUE)
df1
class(df1)
# Pacote xlsx
detach(package:XLConnect)
library(xlsx)
?xlsx
?read.xlsx
df2 <- read.xlsx("UrbanPop.xlsx", sheetIndex = 1)
df2
# Pacote gdata
detach(package:xlsx)
library(gdata)
arq1 <- xls2csv("planilha1.xlsx",
                sheet = 1,
                na.strings = "EMPTY")
arq1
read.csv(arq1)
#####---------------------------------Big Data na Pratica 3---------------------------------------###
# Pacotes
install.packages("RSQLite")
install.packages("dplyr")
install.packages("tidyr")
install.packages("arules")
install.packages("arulesSequences")
install.packages("readr")
install.packages("visNetwork")
install.packages("igraph")
install.packages("lubridate")
install.packages("DT")
library(RSQLite)
library(dplyr)
library(tidyr)
library(arules)
library(arulesSequences)
library(readr)
library(stringr)
library(visNetwork)
library(igraph)
library(lubridate)
library(DT)
# Os dados estão disponibilizados em um banco de dados SQLITE 
# que pode ser baixado do kaggle, mas está anexo a este script.
# Conectando no banco de dados
con = dbConnect(RSQLite::SQLite(), dbname="database.sqlite")
# Obtendo a lista de tabelas
alltables = dbListTables(con)
alltables
# Extraindo as tabelas
players       = dbReadTable(con, "Player")
players_stats = dbReadTable(con, "Player_Attributes")
teams         = dbReadTable(con, "Team")
league        = dbReadTable(con, "League")
Matches       = dbReadTable(con, "Match")
View(players)
View(players_stats)
View(teams)
View(league)
View(Matches)
# Substituindo espaço por underline nos nome muito longos
teams$team_long_name = str_replace_all(teams$team_long_name, "\\s", "_")
teams$team_long_name = str_replace_all(teams$team_long_name, "\\.", "_")
teams$team_long_name = str_replace_all(teams$team_long_name, "-", "_")
View(teams)
# Agrupando as equipes por país
CountryClub = Matches %>% 
  group_by(home_team_api_id,country_id) %>% 
  summarise(n=n()) %>% 
  left_join(league) %>%
  left_join(teams, by=c("home_team_api_id" = "team_api_id"))
# Preparando os dados para mineração das regras de associação
# Os jogadores estão em colunas separadas, mas precisamos deles empilhados em uma coluna
tmp = Matches %>% 
  select(
    season, 
    home_team_api_id, 
    home_player_1:home_player_11
  )%>%
  gather(
    player, 
    player_api_id, 
    -c(season, home_team_api_id)
  ) %>%
  group_by(player_api_id, home_team_api_id ) %>% 
  summarise(season = min(season))
# Unindo dados de jogador e clube
playerClubSequence = left_join(
  tmp,
  players
) %>% 
  left_join(
    teams, 
    by=c("home_team_api_id"="team_api_id")
  )
playerClubSequence = playerClubSequence %>% 
  filter(
    !is.na(player_name), !is.na(team_short_name)
  )  %>%
  arrange(
    player_api_id, 
    season
  )
# Adicionando um número sequencial por jogador
playerClubSequence$seqnr = ave( playerClubSequence$player_api_id, playerClubSequence$player_api_id, FUN = seq_along)
playerClubSequence$size = 1
# Mineração de sequências com algoritmo cSPade do pacote arulesSequences
# Grava o conjunto de dados em um arquivo txt para facilitar a manipulação 
# da função read_basket em arulesSequence para criar um objeto de transação
write_delim( 
  playerClubSequence %>% select( c(player_api_id, seqnr, size, team_long_name)) ,
  delim ="\t", path = "player_transactions.txt", col_names = FALSE
)
# Agora importamos as transações registradas no item anterior
playerstrxs <- read_baskets("player_transactions.txt", sep = "[ \t]+",info =  c("sequenceID","eventID","size"))
summary(playerstrxs)
# Executar mineração de sequência, por enquanto apenas com comprimento de duas sequências
?cspade
playersClubSeq <- cspade(
  playerstrxs, 
  parameter = list(support = 0.00010, maxlen=2), 
  control   = list(verbose = TRUE)
)
summary(playersClubSeq)
# Fazendo Data Wrangling para colocar os resultados do cspade em um organizado conjunto de dados 
# que é adequado para a visNetwork. A visNetwork precisa de dois conjuntos de dados:
# um conjunto de dados com as arestas "de --> para" e um conjunto de dados com os nós exclusivos
seqResult = as(playersClubSeq, "data.frame")
seqResult = seqResult %>% 
  mutate(
    sequence = as.character(sequence)
  )
seqResult = bind_cols(
  seqResult,
  as.data.frame(
    str_split_fixed(seqResult$sequence, pattern =",", 2), 
    stringsAsFactors = FALSE)
)
seqResult$from = str_extract_all(seqResult$V1,"\\w+", simplify = TRUE)[,1] 
seqResult$to   = str_extract_all(seqResult$V2,"\\w+",simplify = TRUE)[,1]
seqResult$width = exp(3000*seqResult$support)
seqResult = seqResult %>% filter(V2 !="")
seqResult$title = paste(seqResult$sequence, "<br>", round(100*seqResult$support,2), "%")
seqResult$support_perc = paste(sprintf("%.4f", 100*seqResult$support), "%")
# Criando o dataframe com os nodes
nodes = unique(c(seqResult$from, seqResult$to))
nodesData = data.frame(id = unique(nodes), title = unique(nodes), label = unique(nodes), stringsAsFactors = FALSE) %>%
  left_join(CountryClub, by = c("id"="team_long_name")) %>% 
  rename(group = name)
View(nodes)
# Calcula as medidas de centralidade de betweeness
# usando o igraph, para que possamos ter tamanhos diferentes de
# nós no gráfico de rede
transferGraph = graph_from_data_frame(seqResult[,c(5,6)], directed = TRUE)
tmp = betweenness(transferGraph)
Clubs_betweenness = data.frame(id = names(tmp), value = tmp, stringsAsFactors = FALSE)
nodesData = nodesData %>% 
  left_join(Clubs_betweenness) %>%
  mutate(title = paste(id, "betweeness ", round(value))) %>%
  arrange(id)
# Criando a rede interativa
# Preparando o dataframe final e removendo duplicidades
nodes = nodesData
nodes = nodes[!duplicated(nodes$id),]
# Cria a rede
?visNetwork
visNetwork(nodes, edges = seqResult, width = 900, height = 700) %>%
  visNodes(size = 10) %>%
  visLegend() %>%
  visEdges(smooth = FALSE) %>%
  visOptions(highlightNearest = TRUE, nodesIdSelection = TRUE) %>%
  visInteraction(navigationButtons = TRUE) %>%
  visEdges(arrows = 'from') %>%
  visPhysics(
    solver = "barnesHut",
    maxVelocity = 35,
    forceAtlas2Based = list(gravitationalConstant = -6000)
  )
# Cria a tabela final para suportar a análise
seqResult$Ntransctions = seqResult$support*10542
DT::datatable(
  seqResult[,c(5,6,9,10)], 
  rownames = FALSE,
  options = list(
    pageLength=25)
)
######------------------------------------------------------------------------------------------------####

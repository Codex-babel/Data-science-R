install.packages("questionr")
library(questionr)
install.packages("tidyverse")
library(tidyverse)
arquivo <- "https://raw.githubusercontent.com/fernandobarbalho/enap_auto_instucional/main/data/dados_municipios.csv"

dados_municipios<- read_csv(file = arquivo)
dados_municipios %>%
  slice_max(populacao, n = 7)%>%
  mutate(name=reorder(nome,populacao))%>%
  ggplot()+
  geom_col(aes(x=populacao, y=nome, fill = nome_regiao))

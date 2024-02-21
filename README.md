# Desafio 5DataGlowUp - Análise de dados de um e-commerce

O desafio proposto foi analisar os dados de um e-commerce, entre Outubro/2019 e Fevereiro/2020.

---
## 📂 Conteúdo

1. [Descrição dos Dados](#descrição-dos-dados)
2. [Análise Exploratória e Tratamento](#análise-exploratória-e-tratamento)
3. [Insights Iniciais](#insights-iniciais)
4. [Funcionalidades do Dashboard](#funcionalidades-do-dashboard)
5. [Visual do Power BI](#visual-do-power-bi)
6. [Ferramentas externas](#ferramentas-externas)
7. [Conclusão](#conclusão)
8. [Expressões de gratidão](#expressões-de-gratidão)

---
## Descrição dos Dados

Os dados foram obtidos diretamente do [Kaggle](https://www.kaggle.com/datasets/mkechinov/ecommerce-events-history-in-cosmetics-shop), onde constam 5 arquivos .CSV, em que cada possui os dados referentes aos meses Outubro/2019, Novembro/2019, Dezembro/2019, Janeiro/2020 e Fevereiro/2020. 

Os arquivos representam uma base com dados de uma loja online de cosméticos de médio porte, a qual dei o nome de 'Boutique Store'.

Cada linha no arquivo representa um registro único. Todos os registros estão relacionados a produtos e usuários.  

Aqui está um breve dicionário das variáveis presentes:

- **event_time:** representa a data e horário referente a cada uma das linhas (alterado em Python)
- **event_type:** representa o tipo de evento
- **product_id**: identificação única do produto, representada por números
- **category_id:** identificação única da categoria, representada por números
- **category_code:** categoria do produto
- **brand:** marca do produto
- **price:** preço do produto
- **user_id:** identificação única do usuário, representada por números
- **user_session:** identificação única do sessão, representada por sequência de caracteres alfa-númericos

---
## Análise Exploratória e Tratamento

Foi utilizado o SQL (PostgreSQL). Nos arquivos .SQL (dentro da pasta SQL) estão as análises e tratamentos realizados.

- **Iniciados com 'create_':** cria as tabelas com os dados dos .CSV mensais, para analisar com SQL
- **Iniciados com 'count_':** queries que contam registros mensais, por categoria e por marca
- **Iniciados com 'analise_':** queries que ajudam a realizar uma análise descritiva de cada tabelas
- **negative_price.txt:** arquivo explicando o motivo de ser necessário realizar o update abaixo
- **update_negative_price.sql:** realizando o update para mudar os preços negativos para preços positivos

Foi utilizado o Python (Notebook Jupyter), dentro da pasta Python, para fazer as primeiras análises da base de dados. A base de dados, continha vários arquivos .CSV, separada por meses. 

As bases foram alteradas, reorganizadas e convertidas para dataframes, para proceder com a unificação dos dados, criando 1 dataframe:

- **df_oct** - dataframe contendo a base de Outubro/2019
- **df_nov** - dataframe contendo a base de Novembro/2019
- **df_dec** - dataframe contendo a base de Dezembro/2019
- **df_jan** - dataframe contendo a base de Janeiro/2020
- **df_feb** - dataframe contendo a base de Fevereiro/2020

- **df_unificado** - dataframe contendo a base unificada

---
## Insights Iniciais

* Thanksgiving (Dia de Ação de Graças, nos EUA) e Black Friday foram as datas com mais acessos ao e-commerce;
* 31/12/2019 foi o dia com menos acessos;
* Sábado é o dia da semana com menos acessos, Quarta-feira é o com mais.

Mais detalhes podem ser encontrados no dashboard em Power BI.

---
## Funcionalidades do Dashboard

### Seleção de Filtros
O dashboard permite a seleção de filtros para personalizar a análise dos dados, incluindo:
- **Data:** Selecione o período desejado de 01/10/2019 a 29/02/2020
- **Evento:** Selecione o evento desejado
- **Categoria:** Selecione a categoria desejada

### Gráficos de Colunas:
* Top 10 - Quantidade de Produtos por Marca
* Acessos em datas comemorativas

### Gráfico de Barra:
* Quantidade de Produtos por Categoria

### Gráficos de Linha:
* Acessos por período (Madrugada...)
* Acessos por dia da semana
* Acessos ao longo do tempo (anos, meses...)

### Gráficos de Funil:
* Taxa de Conversão
* Taxa de Rejeição

### Cartões:
* Quantidade de marcas
* Quantidade de produtos categorizados
* Quantidade de produtos não categorizados
* Quantidade de acessos

---
## Ferramentas externas

[Colour Lovers](https://www.colourlovers.com/) - usado para escolher a paleta de cores usadas no dashboard (usando cores que não dificultam caso o leitor seja daltônico)

[Flat Icon](https://www.flaticon.com/) - ícones usados no dashboard

[Figma](https://www.figma.com/) - montagem do background do dashboard

---
📊
## Visual do Power BI

[Dashboard](https://app.powerbi.com/view?r=eyJrIjoiMDdmZjQzZDItYjg3OS00OWNiLTk1YmMtY2I4NzljYmEwMGE2IiwidCI6IjBjN2IxYjM2LTllNjAtNDcwZi05ZGYxLTE4ZTgwOGY4Y2Y0NSJ9&pageName=ReportSection76c85a851218c2e06bb0)

---
## Conclusão

A análise proporcionou insights valiosos sobre o comportamento do e-commerce no período analisado. 

Foi bem desafiador e divertido de analisar, que venham mais desafios.

---
## Expressões de gratidão

Compartilhe com outras pessoas esse projeto 📢;

Quer saber mais sobre o projeto? Entre em contato!

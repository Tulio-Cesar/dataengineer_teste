O banco de dados escolhido foi o postgres na versão 12.5, pois é a versão free do postgres disponível no RDS da AWS. O banco foi criado a partir do painel da plataforma do RDS. 
Toda a estrutura desde a criação das tabelas, importação dos arquivos CSV e as querys para análise foram feitas com linguagem SQL.

Para a criação das tabelas e consultas, optei por conectar o banco com o vscode pois é uma ferramenta gratuita e de fácil manuseio. Poderia ter feito a ingestão dos dados no datalake criado no S3 e posteriormente importar para o banco, e realizar as consultas/análises pelo Athena, entretanto, para evitar gastos adicionais, escolhi utilizar somente o RDS na nuvem AWS.

Para a importação dos arquivos, foi utilizado o shell do postgres (psql), devido a AWS não entregar acesso de super usuário ao usuário root, não foi possível fazer a importação do arquivo local para o RDS usando a IDE do vscode, então foi feito através de comando.

Os códigos SQL como os comandos utilizando no Shell, estão no Github da mesma ordem em que foi criado. O banco não segue técnicas de normalização.

O link abaixo contém mais detalhes:
https://medium.com/@tuliocesar.ls/loja-de-bicicleta-cloud-database-acb6bbe22b82

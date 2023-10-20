# dockerFileLaravel
Arquivo Dockerfile para start de aplicação Laravel 7.4-cli



*basta executar os comandos a seguir em seu terminal com docker:*

* docker build -t <nome_da_imagem>:latest .
* docker run -it -p <porta_desejada_localhost>:80 <nome_da_imagem>



com a aplicação rodando, vá para o navegador e abra o localhost na porta 8000. Caso queira trocar a porta 80 para outra porta do container basta alterar na opção CMD do arquivo Dockerfile.

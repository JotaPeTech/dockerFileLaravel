# dockerFileLaravel
Arquivo Dockerfile para start de aplicação Laravel 7.4-cli



basta executar os comandos a seguir em seu terminal com docker:

docker build -t <seu_user_docker_hub>/laravel:latest .
docker run -it -p 8000:80 <seu_user_docker_hub>/laravel



com a aplicação rodando, vá para o navegador e abra o localhost na porta 8000. Caso queira outra porta basta alterar na opção CMD do arquivo Dockerfile.

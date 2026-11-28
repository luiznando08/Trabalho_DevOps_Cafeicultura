# Usa a imagem oficial leve do Nginx
FROM nginx:alpine

# Copia o seu index.html para a pasta padrão do servidor web
COPY index.html /usr/share/nginx/html/index.html

# Configura o Nginx para rodar na porta 8080 (para bater com o -p 80:8080 da sua EC2)
RUN sed -i 's/listen  *80;/listen 8080;/g' /etc/nginx/conf.d/default.conf

EXPOSE 8080

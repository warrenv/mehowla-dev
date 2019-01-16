FROM nginx:1.15.2

RUN echo 'PS1="\u@${PROJECT_NAME:-noProject}/${SERVICE_NAME:-noService}:\w# "' >> ~/.bashrc
COPY ./conf.d /etc/nginx/conf.d
CMD [ "nginx", "-g", "daemon off;" ]

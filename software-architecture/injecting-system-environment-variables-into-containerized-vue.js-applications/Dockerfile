# From "Injecting system environment variables into containerized Vue.js applications": https://sharing-experience.com/en/knowledge-base/software-architecture/configurable/injecting-system-environment-variables-into-containerized-vue.js-applications
WORKDIR /
COPY create_config_js.sh .
RUN chmod +x create_config_js.sh
COPY docker_entrypoint.sh .
RUN chmod +x docker_entrypoint.sh

EXPOSE 80
CMD ["/bin/sh", "docker_entrypoint.sh"]

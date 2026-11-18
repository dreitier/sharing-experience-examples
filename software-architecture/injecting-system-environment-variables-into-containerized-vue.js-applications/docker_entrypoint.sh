# From "Injecting system environment variables into containerized Vue.js applications": https://sharing-experience.com/en/knowledge-base/software-architecture/configurable/injecting-system-environment-variables-into-containerized-vue.js-applications
SRC=/usr/share/nginx/html/config.js

# quoting is required to keep line breaks
NEW_CONFIG="$(./create_config_js.sh $SRC)"
echo "$NEW_CONFIG" > $SRC

# start webserver, e.g. apache or nginx
exec nginx -g 'daemon off;'

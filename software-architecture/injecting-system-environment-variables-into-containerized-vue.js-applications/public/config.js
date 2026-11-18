// From "Injecting system environment variables into containerized Vue.js applications": https://sharing-experience.com/en/knowledge-base/software-architecture/configurable/injecting-system-environment-variables-into-containerized-vue.js-applications
// will be overwritten during container startup
window.APPLICATION_SETTING_API_ENDPOINT_URL = null;
window.APPLICATION_SETTING_2 = null;
// ...
window.APPLICATION_SETTING_N = null;

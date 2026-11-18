// From "Injecting system environment variables into containerized Vue.js applications": https://sharing-experience.com/en/knowledge-base/software-architecture/configurable/injecting-system-environment-variables-into-containerized-vue.js-applications
// gain access to the *window* global
declare const window: any

// prefer the `window.` application setting over `environment`.
export const API_ENDPOINT_URL = (window.APPLICATION_SETTING_API_ENDPOINT_URL ? window.APPLICATION_SETTING_API_ENDPOINT_URL : environment.APPLICATION_SETTING_API_ENDPOINT_URL);
export const APPLICATION_SETTING_2 = (window.APPLICATION_SETTING_2 ? window.APPLICATION_SETTING_2 : environment.APPLICATION_SETTING_2);
// ...
export const APPLICATION_SETTING_N = (window.APPLICATION_SETTING_N ? window.APPLICATION_SETTING_N : environment.APPLICATION_SETTING_N);

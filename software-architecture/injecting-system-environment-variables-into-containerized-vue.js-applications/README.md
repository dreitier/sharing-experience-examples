# Injecting system environment variables into containerized Vue.js applications

Files from the article [Injecting system environment variables into containerized Vue.js applications](https://sharing-experience.com/en/knowledge-base/software-architecture/configurable/injecting-system-environment-variables-into-containerized-vue.js-applications).
The article explains each file, where it goes and which parts you have to change. Most files
are excerpts: `# ...` or `// ...` marks the parts the article leaves out.

## Files

- [`public/config.js`](public/config.js)
- [`public/index.html`](public/index.html)
- [`src/application.config.ts`](src/application.config.ts)
- [`create_config_js.sh`](create_config_js.sh)
- [`Dockerfile`](Dockerfile)
- [`docker_entrypoint.sh`](docker_entrypoint.sh)

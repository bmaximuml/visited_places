FROM nginx:alpine

COPY cities.js countries.js d3/ datamaps/ index.html /usr/share/nginx/html/

HEALTHCHECK --interval=10s CMD curl --fail localhost:80 || exit 1

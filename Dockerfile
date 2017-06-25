FROM buildpack-deps:scm AS scm

WORKDIR /scm
RUN git clone https://github.com/kvhnuke/etherwallet

FROM nginx
COPY --from=scm /scm/etherwallet/dist /usr/share/nginx/html

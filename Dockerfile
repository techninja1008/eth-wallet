FROM buildpack-deps:scm AS scm

WORKSPACE /scm
RUN git clone https://github.com/ethereum/meteor-dapp-wallet/

FROM nginx
COPY --from=scm /scm/meteor-dapp-wallet/build /usr/share/nginx/html

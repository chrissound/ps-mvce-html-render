FROM ghcr.io/codewars/purescript:0.15.4.2

WORKDIR /myapp

USER root
RUN chown codewarrior:codewarrior -R /myapp

USER codewarrior

RUN npm install purescript
RUN npm install spago

ADD packages.dhall spago.dhall /myapp/
ADD ./src /myapp/src/

RUN spago build
RUN spago run

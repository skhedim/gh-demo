FROM debian:9.5-slim

LABEL "com.github.actions.name"="Hello DECATHLON"
LABEL "com.github.actions.description"="Just testing Github actions..."
LABEL "com.github.actions.icon"="mic"
LABEL "com.github.actions.color"="blue"

LABEL "repository"="https://github.com/dktunited/github-actions"
LABEL "homepage"="https://decathlon.fr"
LABEL "maintainer"="Sebastien KHEDIM"

ADD entrypoint.sh /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]

FROM node:lts

# Running as root
RUN npm install -g truffle

#SHELL ["/bin/bash"]


# At the end, set the user and run the commands that shouldn´t be run as root.
USER node

VOLUME /mnt/main-project
WORKDIR /mnt/main-project

VOLUME /mnt/dev-projects

ARG GIT_USER_NAME
ARG GIT_USER_EMAIL
RUN git config --global user.name $GIT_USER_NAME && git config --global user.email $GIT_USER_EMAIL



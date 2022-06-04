# specify the node base image with your desired version node:<version>
FROM node:lts

# Replace this with your application's default port
EXPOSE 8888

# Truffle ports 8545 / 9545
EXPOSE 8545
EXPOSE 9545

WORKDIR /home/node

# npm install -g truffle
RUN npm install -g truffle

VOLUME /mnt/dev-projects

### TESTAR REDEFINIR WORKDIR PARA /mnt/dev-projects
#WORKDIR /mnt/dev-projects


#SHELL ["/bin/bash"]

#ENTRYPOINT ["executable", "param1", "param2"]
#ENTRYPOINT ["/bin/bash"]


# At the end, set the user to use when running this image
USER node


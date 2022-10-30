FROM jenkins/jenkins
# if we want to install via apt
USER root
RUN apt-get update
#RUN wget -O- https://apt.releases.hashicorp.com/gpg | \
#    gpg --dearmor | \
#    sudo tee /usr/share/keyrings/hashicorp-archive-keyring.gpg
#RUN gpg --no-default-keyring \
#    --keyring /usr/share/keyrings/hashicorp-archive-keyring.gpg \
#    --fingerprint
#RUN echo "deb [signed-by=/usr/share/keyrings/hashicorp-archive-keyring.gpg] \
#    https://apt.releases.hashicorp.com $(lsb_release -cs) main" | \
#    sudo tee /etc/apt/sources.list.d/hashicorp.list
#RUN sudo apt update

#RUN sudo apt install terraform

# drop back to the regular jenkins user - good practice
#USER jenkins
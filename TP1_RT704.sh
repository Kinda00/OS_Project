#!/bin/bash

echo '-------------Installation de Docker-compose ------------------------'
apt install docker-compose

echo '------------------- Mise a jours du depot des paquets ------------------'
sudo apt-get update

echo '-----Installtion des paquets permettant à APT dutiliser un serveur HTTPS de dépôt----'
sudo apt-get install \
        apt-transport-https \
        ca-certificates \
        curl \
        software-properties-common

echo '---ajout de la clé GPG du site de Docker----'
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -

echo '-----Pointage vers le dépôt de la version "stable" de Docker CE-----'
sudo add-apt-repository \
       "deb [arch=amd64] https://download.docker.com/linux/ubuntu \
       $(lsb_release -cs) \
       stable"

echo '----------Mise a jour du depot de index APT ----------------'
apt-get update 

echo '------ Installation de Docker CE (Community Edition ---------'
apt-get install docker-ce

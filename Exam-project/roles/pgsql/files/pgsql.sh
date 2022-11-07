#!/bin/bash

#Create the file respository configuration

sudo sh -c 'echo "deb http://apt.postgresql.org/pub/repos/apt $(lsb_release -cs)-pgdg main" > /etc/apt/sources.list.d/pgdg.list'

#Import the respository signing key

wget --quiet -0 - https://www.postgresql.org/media/keys/ACCC4CF8.asc | sudo apt-key add -

#Update the package lists

sudo apt-get update

#Install the latest version of postgreSQL

#If you want a specific version, use 'postgresql-15' or similar instead of 'postgresql'

sudo apt install postgresql -y

#!/bin/bash

#activate virtual env
echo "Enter venv name"
read env_name

source $env_name/scripts/activate

echo "Enter project name:"
read project_name

#create project
django-admin startproject $project_name

#enter project dir
cd $project_name

#initialize git
git init

#add_repo
echo "Enter repo name"
read repo_name
git remote add origin https://github.com/Abdul12majid/$repo_name.git


#create directories to store secret key(s)
mkdir keys
cd keys
touch keys.py

#add secret directories to .gitignore file
echo 'keys/' > .gitignore


echo "Set-up done"
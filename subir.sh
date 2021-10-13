#!/bin/bash

cd ~/Dropbox/2ASIR/Repositorios-GIT/pagina-html
hugo -D >/dev/null 2>&1
cp -r ~/Dropbox/2ASIR/Repositorios-GIT/pagina-html/public/* ~/Dropbox/2ASIR/Repositorios-GIT/web-netlify/
echo "Se actualizara la pagina estatica..."
cd ~/Dropbox/2ASIR/Repositorios-GIT/web-netlify
git add *
echo -n "Introduce el comentario para subir: "
read respuesta
git commit -am "$respuesta"
git push >/dev/null 2>&1
cd ~/Dropbox/2ASIR/Repositorios-GIT/pagina-html
git add *
git commit -am "$respuesta"
git push >/dev/null 2>&1

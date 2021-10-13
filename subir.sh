#!/bin/bash

cd ~/Dropbox/2ASIR/Repositorios-GIT/pagina-html
hugo -D >/dev/null 2>&1
cp -r ~/Dropbox/2ASIR/Repositorios-GIT/pagina-html/public/* ~/Dropbox/2ASIR/Repositorios-GIT/web-netlify/
echo "Se actualizara la pagina estatica..."
cd ~/Dropbox/2ASIR/Repositorios-GIT/web-netlify
git add * >/dev/null 2>&1
echo -n "Introduce el comentario al respecto: "
read respuesta
git commit -am "$respuesta" >/dev/null 2>&1
git push >/dev/null 2>&1
cd ~/Dropbox/2ASIR/Repositorios-GIT/pagina-html
git add * >/dev/null 2>&1
git commit -am "$respuesta" >/dev/null 2>&1
git push >/dev/null 2>&1
echo "Se actualizaron los repositorios afectados."

#!/bin/bash

echo "Se creara la pagina html"
cd ~/Dropbox/2ASIR/Repositorios-GIT/pagina-html
hugo -D
cp ~/Dropbox/2ASIR/Repositorios-GIT/pagina-html/public/* ~/Dropbox/2ASIR/Repositorios-GIT/web-netlify/
echo "Se actualizara la pagina estatica..."
cd ~/Dropbox/2ASIR/Repositorios-GIT/web-netlify
git add *
git commit -am "Script"
git push
cd ~/Dropbox/2ASIR/Repositorios-GIT/pagina-html
git add *
git commit -am "Script"
git push

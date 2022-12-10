#!/bin/bash

echo 1. Mover las Fotos a carpeta fotos
echo 2. Mover los documentos a carpeta doc
echo 3. copiar todos los archivos en carpeta copy

read -p "Introduce la opcion: " opcion

case $opcion in

1)
	find . -type f -iname "*.png" -exec mv "{}" fotos/ ";"
	find . -type f -iname "*.jpg" -exec mv "{}" fotos/ ";"
	find . -type f -iname "*.jpeg" -exec mv "{}" fotos/ ";";;

2)
        find . -type f -iname "*.doc" -exec mv "{}" doc/ ";"
        find . -type f -iname "*.docx" -exec mv "{}" doc/ ";"
        find . -type f -iname "*.pdf" -exec mv "{}" doc/ ";"
        find . -type f -iname "*.txt" -exec mv "{}" doc/ ";";;

3)
        find . -type f -iname "*.*" -exec cp "{}" copy/ ";";;

esac

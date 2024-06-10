#!/bin/bash

if [ -z $1 ]; then
    echo "Origem nao especificada"
    exit 1
elif [ -z $2 ]; then
    echo "Destino nao especificado"
    exit 1
fi

NOME=backup$(echo $1 | tr '/' '-').tgz

echo -e "Origem: $1\nDestino: $2\nNome do arquivo: $NOME"

echo "Iniciando compactação..."
tar czvf $2$NOME $1
echo "arquivo compactado com sucesso"

exit 0
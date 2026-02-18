#!/bin/bash

# 1. Espaço obrigatório após o [ e antes do ]
if [ -z "$1" ]; then
    echo "Describe the directory"
    echo "Use: ./log-archive.sh <directory-logs>" # Corrigido ecno -> echo
    exit 1
fi

LOG_DIR=$1

# 2. Espaço entre o comando date e o formato +%
TIMESTAMP=$(date +"%Y%m%d_%H%M%S")

# 3. Sem espaços ao redor do sinal de igual (=)
ARCHIVE_NAME="logs_archive_${TIMESTAMP}.tar.gz"
DEST_DIR="./archives"

mkdir -p "$DEST_DIR"

# Compactação
tar -czf "${DEST_DIR}/${ARCHIVE_NAME}" -C "$LOG_DIR" . 2>/dev/null

# Verificação de status
if [ $? -eq 0 ]; then
    echo "Sucesso! Logs de $LOG_DIR arquivados em ${DEST_DIR}/${ARCHIVE_NAME}"
    echo "[$(date +'%Y-%m-%d %H:%M:%S')] Arquivado: ${ARCHIVE_NAME}" >> archive_log.txt
else
    echo "Erro ao tentar compactar os logs. Verifique se o diretório existe e se você tem permissão."
    exit 1
fi
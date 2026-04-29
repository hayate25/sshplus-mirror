cat > /root/sshplus-mirror/pos_install.sh << 'EOF'
#!/bin/bash
# POST-INSTALACION SSHPLUS - REEMPLAZA MODULOS POR VERSIONES PERSONALIZADAS

echo "========================================="
echo " APLICANDO MODULOS PERSONALIZADOS"
echo "========================================="

# URL base de tu repositorio (raw)
BASE_URL="https://raw.githubusercontent.com/hayate25/sshplus-mirror/main/Modulos"

# Lista de modulos que quieres reemplazar (agrega mas si los creas)
MODULOS=(
    "criarusuario"
    # "otro_modulo"  # Agrega aqui mas modulos cuando los tengas
)

for modulo in "${MODULOS[@]}"; do
    echo "Descargando: $modulo"
    wget -q -O "/bin/$modulo" "$BASE_URL/$modulo"
    chmod +x "/bin/$modulo"
    echo "  -> /bin/$modulo actualizado"
done

echo "========================================="
echo " MODULOS PERSONALIZADOS APLICADOS"
echo "========================================="
EOF

chmod +x /root/sshplus-mirror/pos_install.sh
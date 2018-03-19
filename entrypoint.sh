#!/bin/sh

if [ -n "${VMWARE_USER}" -a -n "${VMWARE_PASSWORD}" ]; then
  cat > /usr/src/app/config.yml << EOF
default:
    vmware_user: '${VMWARE_USER}'
    vmware_password: '${VMWARE_PASSWORD}'
    ignore_ssl: False
EOF
fi

/usr/src/app/vmware_exporter

AWX_HOST="awx.cube.lab"
openssl req -x509 -nodes -days 3650 \
-newkey rsa:2048 \
-out tls.crt \
-keyout tls.key \
-subj "/CN=${AWX_HOST}/O=${AWX_HOST}" \
-addext "subjectAltName = DNS:${AWX_HOST}"

# -out ./awx/tls.crt -keyout ./awx/tls.key
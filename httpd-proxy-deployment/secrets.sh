openssl genrsa -des3 -passout pass:x -out certificate.pass.key 2048
openssl rsa -passin pass:x -in certificate.pass.key -out certificate.key
openssl req -new -key certificate.key -out certificate.csr
openssl x509 -req -sha256 -days 365 -in certificate.csr -signkey certificate.key -out certificate.cert

kubectl delete secret ssl-cert
kubectl create secret generic ssl-cert --from-file=./certificate.key --from-file=./certificate.cert

kubectl delete secret kytos-access
kubectl create secret generic kytos-access --from-file=./.htpasswd
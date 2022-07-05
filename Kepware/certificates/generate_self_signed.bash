#!/usr/bin/env bash

openssl genrsa -out default_pk.pem 2048
openssl req -new -key default_pk.pem -out cert.csr -subj "/C=US/ST=NY/L=NY/O=Organization/OU=OrganizationUnit/CN=Telegraf OPC UA client"
openssl x509 -req -days 3650 -extfile extensions.cnf -in cert.csr -signkey default_pk.pem -out public.pem
openssl x509 -in public.pem -inform PEM -out public.der -outform DER
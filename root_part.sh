#!/bin/bash

### We set up the kerberos config file to access to 42's kerberos server.

cat >> /etc/krb5.conf << EOF
[libdefaults]
    default_realm = S19.BE
    forwardable = true
    proxiable = true
    dns_lookup_kdc = no
    dns_lookup_realm = no
    allow_weak_crypto = true

[realms]
    S19.BE = {
        kdc = kdc.s19.be
        admin_server = kdc.s19.be
        default_domain = s19.be
        default_lifetime = 7d
        ticket_lifetime = 7d
    }

[domain_realm]
    .s19.be = S19.BE
    s19.be = S19.BE
EOF

### We set up the ssh config file to access to 42's git server (vogsphere)
### using your kerberos identification

cat >> /etc/ssh/ssh_config << EOF
Host *.s19.be
     SendEnv LANG LC_*
     StrictHostKeyChecking no
     GSSAPIAuthentication yes
     GSSAPIDelegateCredentials yes
     PasswordAuthentication yes
EOF

echo "root part finished !"

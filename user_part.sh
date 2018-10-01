#!/bin/bash

### We set up the user used to access to the vogsphere

mkdir -p ~/.ssh &&
cat >> ~/.ssh/config << EOF
Host vgs vgs.s19.be vgse vgse.s19.be vogsphere vogsphere.s19.be vogsphere-exam vogsphere-exam.s19.be
	User vogsphere
EOF

echo "user part finished, welcome in the freedom !"

#!/bin/bash
# Copyright (c) HashiCorp, Inc.
# SPDX-License-Identifier: MPL-2.0

PUBLIC_IP=$(curl http://checkip.amazonaws.com)

echo "Starting init-script.sh"
echo "Public IP: $PUBLIC_IP"
apt update -y
sudo apt-get install -y openjdk-17-jre wget
wget https://raw.githubusercontent.com/Pugmatt/BedrockConnect/master/scripts/install-bind.sh
chmod +x install-bind.sh
sudo ./install-bind.sh $PUBLIC_IP
wget https://github.com/Pugmatt/BedrockConnect/releases/download/1.42/BedrockConnect-1.0-SNAPSHOT.jar
java -jar BedrockConnect-1.0-SNAPSHOT.jar nodb=true


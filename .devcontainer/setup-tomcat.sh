#!/usr/bin/env bash
set -e

# Install wget & unzip (if missing)
apt-get update
apt-get install -y wget unzip

# Download Tomcat 10
mkdir -p /usr/local/tomcat10
wget https://dlcdn.apache.org/tomcat/tomcat-10/v10.1.30/bin/apache-tomcat-10.1.30.tar.gz -O /tmp/tomcat10.tar.gz
tar -xzf /tmp/tomcat10.tar.gz -C /usr/local/tomcat10 --strip-components=1

# Make scripts executable
chmod +x /usr/local/tomcat10/bin/*.sh

# VS Code server connector config directory
mkdir -p /root/.local/share/redhat.vscode-community-server-connector

# Create Tomcat 10 server definition for VS Code Community Connector
cat <<EOF > /root/.local/share/redhat.vscode-community-server-connector/tomcat10.json
{
  "servers": [
    {
      "id": "tomcat10",
      "type": "tomcat",
      "name": "Apache Tomcat 10",
      "location": "/usr/local/tomcat10",
      "startup": "bin/catalina.sh run",
      "shutdown": "bin/shutdown.sh",
      "port": 8080
    }
  ]
}
EOF

echo "Tomcat 10 installed and VS Code Connector server definition created."

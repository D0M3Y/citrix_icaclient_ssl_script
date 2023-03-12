#!/bin/bash

mv /opt/Citrix/ICAClient/keystore/cacerts /opt/Citrix/ICAClient/keystore/cacerts.backup
ln -s /etc/ssl/certs/ /opt/Citrix/ICAClient/keystore/cacerts

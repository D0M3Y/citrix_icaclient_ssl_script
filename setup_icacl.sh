#!/bin/bash

case $1 in
	--undo|-u)
		rm /opt/Citrix/ICAClient/keystore/cacerts
		;;
	--setup|-s)
		mv /opt/Citrix/ICAClient/keystore/cacerts /opt/Citrix/ICAClient/keystore/cacerts_backup
		ln -s /etc/ssl/certs/ /opt/Citrix/ICAClient/keystore/cacerts
		;;
	--help|-h)
		echo "Usage: ./setup_icacl.sh [parameter] (-y)"
		echo "Setup cacerts link: ./setup_icacl.sh --setup"
		echo "Undo changes: ./setup_icacl.sh --undo"
		echo "Show this site: ./setup_icacl.sh --help"
		;;

		*)
		echo "Wrong Usage. Try --help for more information."
		;;
esac



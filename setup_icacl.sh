#!/bin/bash

ICA_KEYSTORE=/opt/Citrix/ICAClient/keystore

if [ $2 != "" ]; then
	echo "Too much arguments!"
	exit 1
fi

case $1 in
	--undo|-u)
		rm $ICA_KEYSTORE/cacerts
		mv $ICA_KEYSTORE/cacerts_backup $ICA_KEYSTORE/cacerts
		;;
	--setup|-s)
		mv $ICA_KEYSTORE/cacerts $ICA_KEYSTORE/cacerts_backup
		ln -s /etc/ssl/certs/ $ICA_KEYSTORE/cacerts
		;;
	--help|-h)
		echo ""
		echo "Usage: ./setup_icacl.sh [parameter] (-y)"
		echo "Setup cacerts link: ./setup_icacl.sh --setup"
		echo "Undo changes: ./setup_icacl.sh --undo"
		echo "Show this site: ./setup_icacl.sh --help"
		echo ""
		;;

		*)
		echo "Wrong Usage. Try --help for more information."
		;;
esac



#!/usr/bin/env bash
gPath='/mnt/chromeos/MyFiles/Downloads/gamefiles'

__ScriptVersion="version 1.0"
PAT='item\[[0-9A-Za-z]\]';
TPATH="${gPath}";

function usage ()
{
		cat <<- EOT

   Usage :  $0 [options] [--] 

    Options: 
    -h|help     Display this message
    -v|version  Display script version

EOT
}

while getopts ":hvd:p:" opt; do
	case $opt in
		p)
			PAT=${OPTARG};
		;;
		
		d)
			TPATH="${gPath}/${OPTARG}";
			if [[ -d $TPATH ]]; then
				echo 
			else
				TPATH="$gPath/";
				echo "Not a directory";
			fi
		;;
		
		h)
			usage;
			exit 0;
		;;
		
		v)
			echo $__ScriptVersion;
			exit 0;
		;;
		
		*)
			echo "what";
		;;
	esac
done

File="${gPath}/debug/Search.txt"
if [[ -f $File ]]; then
	rm $File;
fi

echo "RegEx - $PAT : Dir - $TPATH" > $File; echo >> $File; grep $PAT -r -n -s $TPATH >> $File;
